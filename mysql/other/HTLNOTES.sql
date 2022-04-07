# USE ------------------------------------------------------------
use HTLNOTES;

# SETUP ----------------------------------------------------------
insert into E_ACCESS_GROUPS (VALUE)
values ('owner'), ('viewer'), ('collaborator');

insert into E_STATUS (VALUE)
values ('active'), ('deleted'), ('archived');













use HTLNOTES;

# insert into E_FORM_OF_ADDRESSES (VALUE)
# values ('male'), ('female'), ('genderneutral');

insert into E_ACCESS_GROUPS (VALUE)
values ('owner'), ('viewer'), ('collaborator');

insert into E_STATUS (VALUE)
values ('active'), ('deleted'), ('archived');

insert into USERS (FIRST_NAME, LAST_NAME, MAIL_ADDRESS, PASSWORD)
values ('David', 'Kaufmann', 'd.kaufmann@htlkrems.at', '1234');

insert into E_TAGS (VALUE, USER_ID)
values ('homework', (select USER_ID from USERS where MAIL_ADDRESS = 'd.kaufmann@htlkrems.at')),
       ('IT', (select USER_ID from USERS where MAIL_ADDRESS = 'd.kaufmann@htlkrems.at'));

insert into NOTES (TITLE, VALUE, STATUS)
values ('Kaufmann personal note', 'This is my first personal note. I really do like apples.', 'active');

insert into NOTE_has_USERS_JT (USER_ID, NOTE_ID, ACCESS_GROUP, IS_PINNED)
values (
    (select USER_ID from USERS where MAIL_ADDRESS = 'd.kaufmann@htlkrems.at'),
    (select NOTE_ID from NOTES where TITLE = 'Kaufmann personal note'),
    ('owner'),
    (0)
);

# Create account - firstname, lastname, email, password (, gender)

# delete account - current user

# Create Note - current user, title, value (, access groups which can see)

# change visibility for access group - note, user, access group, current user

# Delete Note - note, current user

# Archive Note - note, current user

# Share Note - note, current user, aim user, access_lvl (, access groups which can see)

# Transfer Note ownership - note, current user, aim user

# Tag Note - tag, current user, note

# Create Tag - current user, tag

# remove note from user - user, current user, note

# change user access group for note - user, current user, note, access group

# List Tags - current user

# delete tag - current user, tag

# See note-user-relationships - current user, note

# change first name - current user, fistname

# change last name - current user, lastname

# change email - current user, email

# change gender - current user, gender

# delete gender - current user

# change password - current user, password

