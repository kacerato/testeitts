package com.itsmagic.engine.Activities.Editor.Utils;

import com.tonyodev.fetch2core.FetchCoreUtils;
import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

public class C12739g {

    public class a implements Runnable {

        public final File f72119b;

        public final String f72120c;

        public final String f72121d;

        public final d f72122e;

        public a(final File val$destinationFolder, final String val$fileName, final String val$fileURL, final d val$listener) {
            this.f72119b = val$destinationFolder;
            this.f72120c = val$fileName;
            this.f72121d = val$fileURL;
            this.f72122e = val$listener;
        }

        @Override
        public void run() {
            try {
                File file = new File(this.f72119b, this.f72120c);
                URL url = new URL(this.f72121d);
                HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
                httpURLConnection.setRequestMethod(FetchCoreUtils.HEAD_REQUEST_METHOD);
                int contentLength = httpURLConnection.getContentLength();
                String contentType = httpURLConnection.getContentType();
                if (contentType != null && contentType.contains(g3.c.f88114q)) {
                    try {
                        InputStream inputStream = httpURLConnection.getInputStream();
                        try {
                            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
                            try {
                                StringBuilder sb2 = new StringBuilder();
                                while (true) {
                                    String readLine = bufferedReader.readLine();
                                    if (readLine == null) {
                                        break;
                                    }
                                    sb2.append(readLine);
                                    sb2.append("\n");
                                }
                                System.out.println("DOWNLOAD FAILED:The URL returned JSON instead of a file. Response:\n" + sb2.toString());
                                this.f72122e.onError("The URL returned JSON instead of a file. Response:\n" + sb2.toString());
                                bufferedReader.close();
                                if (inputStream != null) {
                                    inputStream.close();
                                    return;
                                }
                                return;
                            } finally {
                            }
                        } catch (Throwable th2) {
                            if (inputStream != null) {
                                try {
                                    inputStream.close();
                                } catch (Throwable th3) {
                                    th2.addSuppressed(th3);
                                }
                            }
                            throw th2;
                        }
                    } catch (IOException e10) {
                        System.out.println("DOWNLOAD FAILED:The URL returned JSON instead of a file. Response:\n" + e10.getMessage());
                        this.f72122e.onError("The URL returned JSON, but an error occurred while reading the response: " + e10.getMessage());
                        return;
                    }
                }
                try {
                    BufferedInputStream bufferedInputStream = new BufferedInputStream(url.openStream());
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(file);
                        try {
                            byte[] bArr = new byte[1024];
                            int i10 = 0;
                            while (true) {
                                int read = bufferedInputStream.read(bArr, 0, 1024);
                                if (read == -1) {
                                    fileOutputStream.close();
                                    bufferedInputStream.close();
                                    this.f72122e.b(file);
                                    return;
                                } else {
                                    fileOutputStream.write(bArr, 0, read);
                                    i10 += read;
                                    this.f72122e.a((float) (i10 / contentLength), i10, contentLength);
                                }
                            }
                        } finally {
                        }
                    } catch (Throwable th4) {
                        try {
                            bufferedInputStream.close();
                        } catch (Throwable th5) {
                            th4.addSuppressed(th5);
                        }
                        throw th4;
                    }
                } catch (IOException e11) {
                    throw new IOException("Erro ao baixar o arquivo: " + e11.getMessage());
                }
            } catch (Error | Exception e12) {
                e12.printStackTrace();
                this.f72122e.onError(e12.getMessage());
            }
            e12.printStackTrace();
            this.f72122e.onError(e12.getMessage());
        }
    }

    public class b implements Runnable {

        public final File f72123b;

        public final String f72124c;

        public final String f72125d;

        public final d f72126e;

        public b(final File val$destinationFolder, final String val$fileName, final String val$imageURL, final d val$listener) {
            this.f72123b = val$destinationFolder;
            this.f72124c = val$fileName;
            this.f72125d = val$imageURL;
            this.f72126e = val$listener;
        }

        @Override
        public void run() {
            try {
                File file = new File(this.f72123b, this.f72124c);
                URL url = new URL(this.f72125d);
                HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
                httpURLConnection.setRequestMethod(FetchCoreUtils.HEAD_REQUEST_METHOD);
                int contentLength = httpURLConnection.getContentLength();
                String contentType = httpURLConnection.getContentType();
                if (contentType != null && contentType.contains(g3.c.f88114q)) {
                    this.f72126e.onError("The URL returned JSON instead of a file.");
                    return;
                }
                try {
                    BufferedInputStream bufferedInputStream = new BufferedInputStream(url.openStream());
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(file);
                        try {
                            byte[] bArr = new byte[1024];
                            int i10 = 0;
                            while (true) {
                                int read = bufferedInputStream.read(bArr, 0, 1024);
                                if (read == -1) {
                                    fileOutputStream.close();
                                    bufferedInputStream.close();
                                    this.f72126e.b(file);
                                    return;
                                } else {
                                    fileOutputStream.write(bArr, 0, read);
                                    i10 += read;
                                    this.f72126e.a((float) (i10 / contentLength), 0, 0);
                                }
                            }
                        } catch (Throwable th2) {
                            try {
                                fileOutputStream.close();
                            } catch (Throwable th3) {
                                th2.addSuppressed(th3);
                            }
                            throw th2;
                        }
                    } catch (Throwable th4) {
                        try {
                            bufferedInputStream.close();
                        } catch (Throwable th5) {
                            th4.addSuppressed(th5);
                        }
                        throw th4;
                    }
                } catch (IOException e10) {
                    throw new IOException("Erro ao baixar a imagem: " + e10.getMessage());
                }
            } catch (Error | Exception e11) {
                e11.printStackTrace();
                this.f72126e.onError(e11.getMessage());
            }
        }
    }

    public class c implements Runnable {

        public final File f72127b;

        public final String f72128c;

        public final String f72129d;

        public final d f72130e;

        public c(final File val$destinationFolder, final String val$fileName, final String val$videoURL, final d val$listener) {
            this.f72127b = val$destinationFolder;
            this.f72128c = val$fileName;
            this.f72129d = val$videoURL;
            this.f72130e = val$listener;
        }

        @Override
        public void run() {
            try {
                File file = new File(this.f72127b, this.f72128c);
                URL url = new URL(this.f72129d);
                HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
                httpURLConnection.setRequestMethod(FetchCoreUtils.HEAD_REQUEST_METHOD);
                int contentLength = httpURLConnection.getContentLength();
                String contentType = httpURLConnection.getContentType();
                if (contentType != null && contentType.contains(g3.c.f88114q)) {
                    this.f72130e.onError("The URL returned JSON instead of a file.");
                    return;
                }
                try {
                    BufferedInputStream bufferedInputStream = new BufferedInputStream(url.openStream());
                    try {
                        FileOutputStream fileOutputStream = new FileOutputStream(file);
                        try {
                            byte[] bArr = new byte[1024];
                            int i10 = 0;
                            while (true) {
                                int read = bufferedInputStream.read(bArr, 0, 1024);
                                if (read == -1) {
                                    fileOutputStream.close();
                                    bufferedInputStream.close();
                                    this.f72130e.b(file);
                                    return;
                                } else {
                                    fileOutputStream.write(bArr, 0, read);
                                    i10 += read;
                                    this.f72130e.a((float) (i10 / contentLength), 0, 0);
                                }
                            }
                        } catch (Throwable th2) {
                            try {
                                fileOutputStream.close();
                            } catch (Throwable th3) {
                                th2.addSuppressed(th3);
                            }
                            throw th2;
                        }
                    } catch (Throwable th4) {
                        try {
                            bufferedInputStream.close();
                        } catch (Throwable th5) {
                            th4.addSuppressed(th5);
                        }
                        throw th4;
                    }
                } catch (IOException e10) {
                    throw new IOException("Erro ao baixar o v\u00eddeo: " + e10.getMessage());
                }
            } catch (Error | Exception e11) {
                e11.printStackTrace();
                this.f72130e.onError(e11.getMessage());
            }
        }
    }

    public interface d {
        void a(float p10, int downloadedBytes, int totalBytes);

        void b(File file);

        void onError(String msg);
    }

    public static void a(String fileURL, File destinationFolder, String fileName, d listener) throws IOException {
        if (destinationFolder.exists() || destinationFolder.mkdirs()) {
            new Thread(new a(destinationFolder, fileName, fileURL, listener)).start();
            return;
        }
        throw new IOException("Erro ao criar o diret\u00f3rio: " + destinationFolder.getAbsolutePath());
    }

    public static void b(String imageURL, File destinationFolder, String fileName, d listener) throws IOException {
        if (destinationFolder.exists() || destinationFolder.mkdirs()) {
            new Thread(new b(destinationFolder, fileName, imageURL, listener)).start();
            return;
        }
        throw new IOException("Erro ao criar o diret\u00f3rio: " + destinationFolder.getAbsolutePath());
    }

    public static void c(String videoURL, File destinationFolder, String fileName, d listener) throws IOException {
        if (destinationFolder.exists() || destinationFolder.mkdirs()) {
            new Thread(new c(destinationFolder, fileName, videoURL, listener)).start();
            return;
        }
        throw new IOException("Erro ao criar o diret\u00f3rio: " + destinationFolder.getAbsolutePath());
    }
}
