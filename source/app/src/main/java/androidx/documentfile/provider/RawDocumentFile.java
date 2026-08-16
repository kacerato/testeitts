package androidx.documentfile.provider;

import android.net.Uri;
import android.util.Log;
import android.webkit.MimeTypeMap;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

class RawDocumentFile extends DocumentFile {
    private File mFile;

    public RawDocumentFile(DocumentFile documentFile, File file) {
        super(documentFile);
        this.mFile = file;
    }

    private static boolean deleteContents(File file) {
        File[] listFiles = file.listFiles();
        boolean z10 = true;
        if (listFiles != null) {
            for (File file2 : listFiles) {
                if (file2.isDirectory()) {
                    z10 &= deleteContents(file2);
                }
                if (!file2.delete()) {
                    Log.w("DocumentFile", "Failed to delete " + ((Object) file2));
                    z10 = false;
                }
            }
        }
        return z10;
    }

    private static String getTypeForName(String str) {
        int lastIndexOf = str.lastIndexOf(46);
        if (lastIndexOf < 0) {
            return "application/octet-stream";
        }
        String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(str.substring(lastIndexOf + 1).toLowerCase());
        return mimeTypeFromExtension != null ? mimeTypeFromExtension : "application/octet-stream";
    }

    @Override
    public boolean canRead() {
        return this.mFile.canRead();
    }

    @Override
    public boolean canWrite() {
        return this.mFile.canWrite();
    }

    @Override
    public DocumentFile createDirectory(String str) {
        File file = new File(this.mFile, str);
        if (file.isDirectory() || file.mkdir()) {
            return new RawDocumentFile(this, file);
        }
        return null;
    }

    @Override
    public DocumentFile createFile(String str, String str2) {
        String extensionFromMimeType = MimeTypeMap.getSingleton().getExtensionFromMimeType(str);
        if (extensionFromMimeType != null) {
            str2 = str2 + "." + extensionFromMimeType;
        }
        File file = new File(this.mFile, str2);
        try {
            file.createNewFile();
            return new RawDocumentFile(this, file);
        } catch (IOException e10) {
            Log.w("DocumentFile", "Failed to createFile: " + ((Object) e10));
            return null;
        }
    }

    @Override
    public boolean delete() {
        deleteContents(this.mFile);
        return this.mFile.delete();
    }

    @Override
    public boolean exists() {
        return this.mFile.exists();
    }

    @Override
    public String getName() {
        return this.mFile.getName();
    }

    @Override
    public String getType() {
        if (this.mFile.isDirectory()) {
            return null;
        }
        return getTypeForName(this.mFile.getName());
    }

    @Override
    public Uri getUri() {
        return Uri.fromFile(this.mFile);
    }

    @Override
    public boolean isDirectory() {
        return this.mFile.isDirectory();
    }

    @Override
    public boolean isFile() {
        return this.mFile.isFile();
    }

    @Override
    public boolean isVirtual() {
        return false;
    }

    @Override
    public long lastModified() {
        return this.mFile.lastModified();
    }

    @Override
    public long length() {
        return this.mFile.length();
    }

    @Override
    public DocumentFile[] listFiles() {
        ArrayList arrayList = new ArrayList();
        File[] listFiles = this.mFile.listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                arrayList.add(new RawDocumentFile(this, file));
            }
        }
        return (DocumentFile[]) arrayList.toArray(new DocumentFile[arrayList.size()]);
    }

    @Override
    public boolean renameTo(String str) {
        File file = new File(this.mFile.getParentFile(), str);
        if (!this.mFile.renameTo(file)) {
            return false;
        }
        this.mFile = file;
        return true;
    }
}
