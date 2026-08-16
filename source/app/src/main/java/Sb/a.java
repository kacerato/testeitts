package Sb;

import android.util.Log;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class a {

    public static final String f23030e = "FilamentLogcatListener";

    public final b f23031a;

    public volatile boolean f23032b = false;

    public Thread f23033c;

    public Process f23034d;

    public class RunnableC0555a implements Runnable {
        public RunnableC0555a() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0052, code lost:
        
            if (r7.f23035b.f23034d != null) goto L17;
         */
        /* JADX WARN: Code restructure failed: missing block: B:14:0x0054, code lost:
        
            r7.f23035b.f23034d.destroy();
            r7.f23035b.f23034d = null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:15:0x0062, code lost:
        
            r7.f23035b.f23031a.b();
            r7.f23035b.f23032b = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x008b, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x0088, code lost:
        
            if (r7.f23035b.f23034d == null) goto L18;
         */
        /* JADX WARN: Removed duplicated region for block: B:35:0x0099  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x008e A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            BufferedReader bufferedReader;
            String readLine;
            try {
                a.this.f23034d = Runtime.getRuntime().exec(new String[]{"logcat", "-s", "Filament"});
                bufferedReader = new BufferedReader(new InputStreamReader(a.this.f23034d.getInputStream()));
                while (a.this.f23032b && (readLine = bufferedReader.readLine()) != null) {
                    try {
                        try {
                            a.this.f23031a.a(readLine);
                        } catch (IOException e10) {
                            e = e10;
                            Log.e(a.f23030e, "Erro ao iniciar logcat", e);
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (IOException unused) {
                                }
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        if (bufferedReader != null) {
                            try {
                                bufferedReader.close();
                            } catch (IOException unused2) {
                            }
                        }
                        if (a.this.f23034d != null) {
                            a.this.f23034d.destroy();
                            a.this.f23034d = null;
                        }
                        a.this.f23031a.b();
                        a.this.f23032b = false;
                        throw th;
                    }
                }
                try {
                    bufferedReader.close();
                } catch (IOException unused3) {
                }
            } catch (IOException e11) {
                e = e11;
                bufferedReader = null;
            } catch (Throwable th3) {
                th = th3;
                bufferedReader = null;
                if (bufferedReader != null) {
                }
                if (a.this.f23034d != null) {
                }
                a.this.f23031a.b();
                a.this.f23032b = false;
                throw th;
            }
        }
    }

    public interface b {
        void a(String line);

        void b();
    }

    public a(b callback) {
        this.f23031a = callback;
    }

    public boolean f() {
        return this.f23032b;
    }

    public synchronized void g() {
        if (this.f23032b) {
            return;
        }
        this.f23032b = true;
        Thread thread = new Thread(new RunnableC0555a(), "FilamentLogcatListenerThread");
        this.f23033c = thread;
        thread.start();
    }

    public synchronized void h() {
        try {
            if (this.f23032b) {
                this.f23032b = false;
                Process process = this.f23034d;
                if (process != null) {
                    process.destroy();
                    this.f23034d = null;
                }
                Thread thread = this.f23033c;
                if (thread != null) {
                    thread.interrupt();
                    this.f23033c = null;
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
