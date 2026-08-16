package android.test;

import android.content.ContentProvider;
import android.content.Context;
import android.content.ContextWrapper;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/android/test/RenamingDelegatingContext.class
 */
@Deprecated
public class RenamingDelegatingContext extends ContextWrapper {
    public RenamingDelegatingContext(Context context, String filePrefix) {
        super((Context) null);
        throw new RuntimeException("Stub!");
    }

    public RenamingDelegatingContext(Context context, Context fileContext, String filePrefix) {
        super((Context) null);
        throw new RuntimeException("Stub!");
    }

    public static <T extends ContentProvider> T providerWithRenamedContext(Class<T> contentProvider, Context c10, String filePrefix) throws IllegalAccessException, InstantiationException {
        throw new RuntimeException("Stub!");
    }

    public static <T extends ContentProvider> T providerWithRenamedContext(Class<T> contentProvider, Context c10, String filePrefix, boolean allowAccessToExistingFilesAndDbs) throws IllegalAccessException, InstantiationException {
        throw new RuntimeException("Stub!");
    }

    public void makeExistingFilesAndDbsAccessible() {
        throw new RuntimeException("Stub!");
    }

    public String getDatabasePrefix() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public SQLiteDatabase openOrCreateDatabase(String name, int mode, SQLiteDatabase.CursorFactory factory) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public SQLiteDatabase openOrCreateDatabase(String name, int mode, SQLiteDatabase.CursorFactory factory, DatabaseErrorHandler errorHandler) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean deleteDatabase(String name) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public File getDatabasePath(String name) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String[] databaseList() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public FileInputStream openFileInput(String name) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public FileOutputStream openFileOutput(String name, int mode) throws FileNotFoundException {
        throw new RuntimeException("Stub!");
    }

    @Override
    public File getFileStreamPath(String name) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public boolean deleteFile(String name) {
        throw new RuntimeException("Stub!");
    }

    @Override
    public String[] fileList() {
        throw new RuntimeException("Stub!");
    }

    @Override
    public File getCacheDir() {
        throw new RuntimeException("Stub!");
    }
}
