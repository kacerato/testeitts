package com.itsmagic.engine.Activities.Editor.Extensions;

import Vc.d;
import android.content.res.AssetFileDescriptor;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.graphics.Point;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.provider.DocumentsContract;
import android.provider.DocumentsProvider;
import android.webkit.MimeTypeMap;
import androidx.annotation.Nullable;
import com.itsmagic.engine2.R;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import z4.b;

public class ManagerDocumentsProvider extends DocumentsProvider {

    public static final String f70102b = "*/*";

    public static List<File> f70103c;

    public static final String[] f70104d = {DocumentsContract.Root.COLUMN_ROOT_ID, DocumentsContract.Root.COLUMN_MIME_TYPES, "flags", "icon", "title", "summary", "document_id", DocumentsContract.Root.COLUMN_AVAILABLE_BYTES};

    public static final String[] f70105e = {"document_id", "mime_type", "_display_name", "last_modified", "flags", "_size"};

    public static String b(File file) {
        return file.getAbsolutePath();
    }

    public static File c(String docId) throws FileNotFoundException {
        File file = new File(docId);
        if (file.exists()) {
            return file;
        }
        throw new FileNotFoundException(file.getAbsolutePath() + " not found");
    }

    public static String d(File file) {
        if (file.isDirectory()) {
            return DocumentsContract.Document.MIME_TYPE_DIR;
        }
        String name = file.getName();
        int lastIndexOf = name.lastIndexOf(46);
        if (lastIndexOf < 0) {
            return "application/octet-stream";
        }
        String mimeTypeFromExtension = MimeTypeMap.getSingleton().getMimeTypeFromExtension(name.substring(lastIndexOf + 1).toLowerCase());
        return mimeTypeFromExtension != null ? mimeTypeFromExtension : "application/octet-stream";
    }

    public final boolean a(File file) {
        File[] listFiles;
        if (file.isDirectory() && (listFiles = file.listFiles()) != null) {
            for (File file2 : listFiles) {
                if (!a(file2)) {
                    return false;
                }
            }
        }
        return file.delete();
    }

    @Override
    public String createDocument(String parentDocumentId, String mimeType, String displayName) throws FileNotFoundException {
        File file = new File(parentDocumentId, displayName);
        int i10 = 2;
        while (file.exists()) {
            file = new File(parentDocumentId, displayName + " (" + i10 + ")");
            i10++;
        }
        try {
            if (DocumentsContract.Document.MIME_TYPE_DIR.equals(mimeType) ? file.mkdir() : file.createNewFile()) {
                return file.getPath();
            }
            throw new FileNotFoundException("Failed to create document with id " + file.getPath());
        } catch (IOException unused) {
            throw new FileNotFoundException("Failed to create document with id " + file.getPath());
        }
    }

    @Override
    public void deleteDocument(String documentId) throws FileNotFoundException {
        if (a(c(documentId))) {
            return;
        }
        throw new FileNotFoundException("Failed to delete document with id " + documentId);
    }

    public final void e(MatrixCursor result, @Nullable String parentDocumentId, File file) {
        MatrixCursor.RowBuilder newRow = result.newRow();
        newRow.add("document_id", b(file));
        newRow.add("_display_name", file.getName());
        newRow.add("_size", Long.valueOf(file.length()));
        newRow.add("mime_type", file.isDirectory() ? DocumentsContract.Document.MIME_TYPE_DIR : f70102b);
        newRow.add("last_modified", Long.valueOf(file.lastModified()));
        newRow.add("flags", Integer.valueOf(file.canWrite() ? file.isDirectory() ? 78 : 70 : 0));
    }

    @Override
    public String getDocumentType(String documentId) throws FileNotFoundException {
        return d(c(documentId));
    }

    @Override
    public boolean isChildDocument(String parentDocumentId, String documentId) {
        return documentId.startsWith(parentDocumentId);
    }

    @Override
    public boolean onCreate() {
        File file = new File(d.c(getContext()), "ITsMagic");
        File file2 = new File(file, "Projects");
        File file3 = new File(file, b.f130655c0);
        File file4 = new File(file, "Languages");
        File file5 = new File(file, "Themes");
        if (!file2.exists()) {
            file2.mkdirs();
        }
        if (!file3.exists()) {
            file3.mkdirs();
        }
        if (!file4.exists()) {
            file4.mkdirs();
        }
        if (!file5.exists()) {
            file5.mkdirs();
        }
        f70103c = Arrays.asList(file2, file3, file4, file5);
        return true;
    }

    @Override
    public ParcelFileDescriptor openDocument(String documentId, String mode, CancellationSignal signal) throws FileNotFoundException {
        return ParcelFileDescriptor.open(c(documentId), ParcelFileDescriptor.parseMode(mode));
    }

    @Override
    public AssetFileDescriptor openDocumentThumbnail(String documentId, Point sizeHint, CancellationSignal signal) throws FileNotFoundException {
        File c10 = c(documentId);
        return new AssetFileDescriptor(ParcelFileDescriptor.open(c10, 268435456), 0L, c10.length());
    }

    @Override
    public Cursor queryChildDocuments(String parentDocumentId, String[] projection, String sortOrder) throws FileNotFoundException {
        if (projection == null) {
            projection = f70105e;
        }
        MatrixCursor matrixCursor = new MatrixCursor(projection);
        for (File file : c(parentDocumentId).listFiles()) {
            e(matrixCursor, null, file);
        }
        return matrixCursor;
    }

    @Override
    public Cursor queryDocument(String documentId, String[] projection) throws FileNotFoundException {
        if (projection == null) {
            projection = f70105e;
        }
        MatrixCursor matrixCursor = new MatrixCursor(projection);
        e(matrixCursor, null, c(documentId));
        return matrixCursor;
    }

    @Override
    public Cursor queryRoots(String[] projection) {
        if (projection == null) {
            projection = f70104d;
        }
        MatrixCursor matrixCursor = new MatrixCursor(projection);
        String string = getContext().getString(R.string.app_name);
        for (File file : f70103c) {
            MatrixCursor.RowBuilder newRow = matrixCursor.newRow();
            newRow.add(DocumentsContract.Root.COLUMN_ROOT_ID, b(file));
            newRow.add("document_id", b(file));
            newRow.add("summary", null);
            newRow.add("flags", 25);
            newRow.add("title", string + " (" + file.getName() + ")");
            newRow.add(DocumentsContract.Root.COLUMN_MIME_TYPES, f70102b);
            newRow.add(DocumentsContract.Root.COLUMN_AVAILABLE_BYTES, Long.valueOf(file.getFreeSpace()));
            newRow.add("icon", Integer.valueOf(R.mipmap.icon_square));
        }
        return matrixCursor;
    }

    @Override
    public Cursor querySearchDocuments(String rootId, String query, String[] projection) throws FileNotFoundException {
        Iterator<File> it;
        if (projection == null) {
            projection = f70105e;
        }
        MatrixCursor matrixCursor = new MatrixCursor(projection);
        File c10 = c(rootId);
        LinkedList linkedList = new LinkedList();
        linkedList.add(c10);
        while (!linkedList.isEmpty() && matrixCursor.getCount() < 50) {
            File file = (File) linkedList.remove(0);
            try {
                it = f70103c.iterator();
            } catch (IOException unused) {
            }
            while (it.hasNext()) {
                if (file.getCanonicalPath().startsWith(it.next().getCanonicalPath())) {
                    if (file.isDirectory()) {
                        Collections.addAll(linkedList, file.listFiles());
                    } else if (file.getName().toLowerCase().contains(query)) {
                        e(matrixCursor, null, file);
                    }
                }
            }
        }
        return matrixCursor;
    }
}
