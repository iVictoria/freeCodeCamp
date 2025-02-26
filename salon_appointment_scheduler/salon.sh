#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=salon --tuples-only -c"

echo -e "\n~~~~ MY SALON ~~~~\n"

echo -e "Welcome to My Salon, how can I help you?\n"

MAIN_MENU() {

if [[ $1 ]]
then 
  echo -e "\n$1"
fi

SERVICES=$($PSQL "SELECT service_id, name FROM services ORDER BY service_id")

echo "$SERVICES" | while read SERVICE_ID BAR SERVICE_NAME
  do
    echo "$SERVICE_ID) $SERVICE_NAME"
  done

read SERVICE_ID_SELECTED

SERVICE_NAME_SELECTED=$($PSQL "SELECT name FROM services WHERE $SERVICE_ID_SELECTED = service_id") 

if [[ $SERVICE_ID_SELECTED != [1-5] ]]
  then 
    MAIN_MENU "I could not find that service. What would you like today?"
  else
    echo "What's your phone number?"
    read CUSTOMER_PHONE

    #check if customer in database
    CUSTOMER_NAME=$($PSQL "SELECT name FROM customers WHERE phone = '$CUSTOMER_PHONE'" )

    #if customer not in database then add to customer database
    if [[ -z $CUSTOMER_NAME ]] 
      then echo "I don't have a record for that phone number, what's your name?"

      read CUSTOMER_NAME
      INSERT_CUSTOMER=$($PSQL "INSERT INTO customers(name, phone) VALUES('$CUSTOMER_NAME', '$CUSTOMER_PHONE')" )      
    fi
    #ask for time
    echo "What time would you like your $(echo $SERVICE_NAME_SELECTED | sed -E 's/^ *| *$//g'), $CUSTOMER_NAME?"

    read SERVICE_TIME

    CUSTOMER_ID=$($PSQL "SELECT customer_id FROM customers WHERE phone = '$CUSTOMER_PHONE'" )

    ADD_APPOINTMENT=$($PSQL "INSERT INTO appointments(customer_id, service_id, time) VALUES($CUSTOMER_ID, $SERVICE_ID_SELECTED, '$SERVICE_TIME')")
    #confirm appointment
    echo "I have put you down for a $(echo $SERVICE_NAME_SELECTED | sed -E 's/^ *| *$//g') at $SERVICE_TIME, $(echo $CUSTOMER_NAME | sed -E 's/^ *| *$//g')."
fi

}


MAIN_MENU