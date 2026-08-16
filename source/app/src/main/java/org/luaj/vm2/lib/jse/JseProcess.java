package org.luaj.vm2.lib.jse;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class JseProcess {
    final Thread error;
    final Thread input;
    final Thread output;
    final Process process;

    public static final class CopyThread extends Thread {
        private final InputStream input;
        private final OutputStream output;
        private final InputStream ownedInput;
        private final OutputStream ownedOutput;

        private CopyThread(OutputStream outputStream, OutputStream outputStream2, InputStream inputStream, InputStream inputStream2) {
            this.output = outputStream;
            this.ownedOutput = outputStream2;
            this.ownedInput = inputStream;
            this.input = inputStream2;
        }

        /* JADX WARN: Finally extract failed */
        @Override
        public void run() {
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    try {
                        int read = this.input.read(bArr);
                        if (read < 0) {
                            break;
                        } else {
                            this.output.write(bArr, 0, read);
                        }
                    } catch (Throwable th2) {
                        InputStream inputStream = this.ownedInput;
                        if (inputStream != null) {
                            inputStream.close();
                        }
                        OutputStream outputStream = this.ownedOutput;
                        if (outputStream != null) {
                            outputStream.close();
                        }
                        throw th2;
                    }
                }
                InputStream inputStream2 = this.ownedInput;
                if (inputStream2 != null) {
                    inputStream2.close();
                }
                OutputStream outputStream2 = this.ownedOutput;
                if (outputStream2 != null) {
                    outputStream2.close();
                }
            } catch (IOException e10) {
                e10.printStackTrace();
            }
        }
    }

    private JseProcess(Process process, InputStream inputStream, OutputStream outputStream, OutputStream outputStream2) {
        this.process = process;
        this.input = inputStream == null ? null : copyBytes(inputStream, process.getOutputStream(), null, process.getOutputStream());
        this.output = outputStream == null ? null : copyBytes(process.getInputStream(), outputStream, process.getInputStream(), null);
        this.error = outputStream2 != null ? copyBytes(process.getErrorStream(), outputStream2, process.getErrorStream(), null) : null;
    }

    private Thread copyBytes(InputStream inputStream, OutputStream outputStream, InputStream inputStream2, OutputStream outputStream2) {
        CopyThread copyThread = new CopyThread(outputStream, outputStream2, inputStream2, inputStream);
        copyThread.start();
        return copyThread;
    }

    public int exitValue() {
        return this.process.exitValue();
    }

    public int waitFor() throws InterruptedException {
        int waitFor = this.process.waitFor();
        Thread thread = this.input;
        if (thread != null) {
            thread.join();
        }
        Thread thread2 = this.output;
        if (thread2 != null) {
            thread2.join();
        }
        Thread thread3 = this.error;
        if (thread3 != null) {
            thread3.join();
        }
        this.process.destroy();
        return waitFor;
    }

    public JseProcess(String str, InputStream inputStream, OutputStream outputStream, OutputStream outputStream2) throws IOException {
        this(Runtime.getRuntime().exec(str), inputStream, outputStream, outputStream2);
    }

    public JseProcess(String[] strArr, InputStream inputStream, OutputStream outputStream, OutputStream outputStream2) throws IOException {
        this(Runtime.getRuntime().exec(strArr), inputStream, outputStream, outputStream2);
    }
}
