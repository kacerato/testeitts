package D;

import android.content.ContentResolver;
import android.content.UriMatcher;
import android.net.Uri;
import android.provider.ContactsContract;
import androidx.annotation.NonNull;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

public class o extends l<InputStream> {

    public static final int f4530f = 1;

    public static final int f4531g = 2;

    public static final int f4532h = 3;

    public static final int f4533i = 4;

    public static final int f4534j = 5;

    public static final UriMatcher f4535k;

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        f4535k = uriMatcher;
        uriMatcher.addURI(ContactsContract.AUTHORITY, "contacts/lookup/*/#", 1);
        uriMatcher.addURI(ContactsContract.AUTHORITY, "contacts/lookup/*", 1);
        uriMatcher.addURI(ContactsContract.AUTHORITY, "contacts/#/photo", 2);
        uriMatcher.addURI(ContactsContract.AUTHORITY, "contacts/#", 3);
        uriMatcher.addURI(ContactsContract.AUTHORITY, "contacts/#/display_photo", 4);
        uriMatcher.addURI(ContactsContract.AUTHORITY, "phone_lookup/*", 5);
    }

    public o(ContentResolver contentResolver, Uri uri) {
        super(contentResolver, uri);
    }

    @Override
    @NonNull
    public Class<InputStream> a() {
        return InputStream.class;
    }

    @Override
    public void c(InputStream inputStream) throws IOException {
        inputStream.close();
    }

    @Override
    public InputStream d(Uri uri, ContentResolver contentResolver) throws FileNotFoundException {
        InputStream h10 = h(uri, contentResolver);
        if (h10 != null) {
            return h10;
        }
        throw new FileNotFoundException("InputStream is null for " + ((Object) uri));
    }

    public final InputStream h(Uri uri, ContentResolver contentResolver) throws FileNotFoundException {
        int match = f4535k.match(uri);
        if (match != 1) {
            if (match == 3) {
                return i(contentResolver, uri);
            }
            if (match != 5) {
                return contentResolver.openInputStream(uri);
            }
        }
        Uri lookupContact = ContactsContract.Contacts.lookupContact(contentResolver, uri);
        if (lookupContact != null) {
            return i(contentResolver, lookupContact);
        }
        throw new FileNotFoundException("Contact cannot be found");
    }

    public final InputStream i(ContentResolver contentResolver, Uri uri) {
        return ContactsContract.Contacts.openContactPhotoInputStream(contentResolver, uri, true);
    }
}
