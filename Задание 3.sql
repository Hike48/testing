select   name, surname, patronimic, phone_number, credit_number, field_value
from clients
join contacts on contacts.client_id = clients.id
join credits on credits.client_id = clients.id
join document on document.client_id=clients.id  
join doc_types on document.doctype_id=doc_types.id
Join doc_fields on doc_fields.doctype_id=doc_types.id
Join field_values on field_values.field_id=doc_fields.id and document.id=field_values.document_id

where (field_values.field_id=1 or field_values.field_id=2) and doc_fields.doctype_id=1
group by name, surname, patronimic, phone_number, credit_number, field_value

--Скрипт написан для SQL Server Management Studio
