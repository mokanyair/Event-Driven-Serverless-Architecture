def lambda_handler(event, context):
    print("Invoice received")
    return {"status": "processed"}
