package t9;

import JAVARuntime.Runnable;
import android.media.AudioAttributes;
import android.media.MediaPlayer;
import android.media.SoundPool;
import android.os.Handler;
import java.io.FileDescriptor;
import java.io.IOException;
import t6.j;

public class C15387c extends C15386b {

    public SoundPool f117207a;

    public f f117208b;

    public FileDescriptor f117209c;

    public long f117210d;

    public long f117211e;

    public String f117212f;

    public boolean f117213g;

    public boolean f117214h;

    public float f117215i;

    public float f117216j;

    public float f117217k;

    public float f117218l;

    public int f117219m;

    public int f117220n;

    public boolean f117221o;

    public boolean f117222p;

    public long f117223q;

    public long f117224r;

    public long f117225s;

    public long f117226t;

    public Handler f117227u;

    public final Runnable f117228v;

    public class a implements Runnable {

        public class RunnableC2016a implements Runnable {
            public RunnableC2016a() {
            }

            @Override
            public void run() {
                C15387c.this.f117227u = new Handler();
                C15387c.this.f117227u.postDelayed(C15387c.this.f117228v, C15387c.this.f117223q - C15387c.this.f117226t);
            }
        }

        public a() {
        }

        @Override
        public void run() {
            if (C15387c.this.f117221o) {
                if (!C15387c.this.f117214h) {
                    C15387c.this.f117226t = 0L;
                    if (!C15387c.this.f117213g) {
                        C15387c.this.q();
                        return;
                    } else {
                        C15387c.this.f117221o = false;
                        C15387c.this.p();
                        return;
                    }
                }
                C15387c.this.f117226t = 0L;
                C15387c.this.f117224r = System.currentTimeMillis();
                N7.c.o().runOnUiThread(new RunnableC2016a());
                if (C15387c.this.f117213g) {
                    return;
                }
                C15387c.this.f117214h = false;
            }
        }
    }

    public class b implements SoundPool.OnLoadCompleteListener {

        public class a implements Runnable {
            public a() {
            }

            @Override
            public void run() {
                t6.e S12 = j.J1() ? j.S1("SoundPoolEmitter - start") : null;
                try {
                    C15387c.this.p();
                } finally {
                    j.P1(S12);
                }
            }
        }

        public b() {
        }

        @Override
        public void onLoadComplete(SoundPool soundPool, int sampleId, int status) {
            K8.a.I(new a());
        }
    }

    public class RunnableC2017c implements Runnable {
        public RunnableC2017c() {
        }

        @Override
        public void run() {
            C15387c.this.f117227u = new Handler();
            C15387c.this.f117227u.postDelayed(C15387c.this.f117228v, C15387c.this.f117223q - C15387c.this.f117226t);
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override
        public void run() {
            C15387c.this.f117227u = new Handler();
            C15387c.this.f117227u.postDelayed(C15387c.this.f117228v, C15387c.this.f117223q - C15387c.this.f117226t);
        }
    }

    public class e implements Runnable {
        public e() {
        }

        @Override
        public void run() {
            if (C15387c.this.f117227u != null) {
                C15387c.this.f117227u.removeCallbacks(C15387c.this.f117228v);
            }
        }
    }

    public enum f {
        Assets,
        Path
    }

    public C15387c(String path, boolean loop) {
        super(loop);
        this.f117213g = true;
        this.f117217k = 1.0f;
        this.f117218l = 1.0f;
        this.f117219m = 0;
        this.f117226t = 0L;
        this.f117228v = new a();
        this.f117208b = f.Path;
        this.f117212f = path;
        this.f117213g = loop;
        E(path, this.f117209c, this.f117210d, this.f117211e);
    }

    private void E(String path, FileDescriptor fd2, long offset, long length) {
        this.f117223q = D();
        SoundPool.Builder builder = new SoundPool.Builder();
        builder.setAudioAttributes(new AudioAttributes.Builder().setUsage(14).setContentType(4).build());
        SoundPool build = builder.build();
        this.f117207a = build;
        f fVar = this.f117208b;
        if (fVar == f.Assets) {
            this.f117219m = build.load(fd2, offset, length, 1);
        } else if (fVar == f.Path) {
            this.f117219m = build.load(path, 1);
        }
        this.f117207a.setOnLoadCompleteListener(new b());
    }

    public final long D() {
        MediaPlayer mediaPlayer = new MediaPlayer();
        mediaPlayer.setAudioAttributes(new AudioAttributes.Builder().setContentType(2).build());
        try {
            f fVar = this.f117208b;
            if (fVar == f.Assets) {
                mediaPlayer.setDataSource(this.f117209c, this.f117210d, this.f117211e);
            } else if (fVar == f.Path) {
                mediaPlayer.setDataSource(this.f117212f);
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        }
        try {
            mediaPlayer.prepare();
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        int duration = mediaPlayer.getDuration();
        if (duration == 0) {
            return 1L;
        }
        return duration;
    }

    @Override
    public float a() {
        return this.f117217k;
    }

    @Override
    public float b() {
        return this.f117218l;
    }

    @Override
    public float c() {
        return this.f117217k;
    }

    @Override
    public long d() {
        return this.f117223q;
    }

    @Override
    public float e() {
        return this.f117218l;
    }

    @Override
    public boolean f() {
        return this.f117213g;
    }

    @Override
    public boolean g() {
        return this.f117222p;
    }

    @Override
    public boolean h() {
        return this.f117221o;
    }

    @Override
    public void i() {
        if (this.f117222p) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        this.f117225s = currentTimeMillis;
        this.f117226t += currentTimeMillis - this.f117224r;
        this.f117207a.pause(this.f117220n);
        if (this.f117227u != null) {
            N7.c.o().runOnUiThread(new e());
        }
        this.f117222p = true;
    }

    @Override
    public void j() {
        this.f117207a.release();
        this.f117222p = false;
        this.f117221o = false;
    }

    @Override
    public void k(boolean loop) {
        if (this.f117213g != loop && this.f117207a != null && h()) {
            this.f117207a.setLoop(this.f117220n, loop ? -1 : 0);
        }
        this.f117213g = loop;
    }

    @Override
    public void l(float pitch) {
        if (this.f117217k != pitch && this.f117207a != null && h()) {
            this.f117207a.setRate(this.f117220n, Nc.b.E(0.5f, this.f117218l * pitch, 2.0f));
        }
        this.f117217k = pitch;
    }

    @Override
    public void m(float pitch, float speed) {
        if ((this.f117217k != pitch || this.f117218l != speed) && this.f117207a != null && h()) {
            this.f117207a.setRate(this.f117220n, Nc.b.E(0.5f, pitch * speed, 2.0f));
        }
        this.f117217k = pitch;
        this.f117218l = speed;
    }

    @Override
    public void n(float speed) {
        if (this.f117218l != speed && this.f117207a != null && h()) {
            this.f117207a.setRate(this.f117220n, Nc.b.E(0.5f, this.f117217k * speed, 2.0f));
        }
        this.f117218l = speed;
    }

    @Override
    public void o(float leftVolume, float rightVolume) {
        if (this.f117215i != leftVolume || this.f117216j != rightVolume) {
            this.f117207a.setVolume(this.f117220n, leftVolume, rightVolume);
        }
        this.f117215i = leftVolume;
        this.f117216j = rightVolume;
    }

    @Override
    public void p() {
        if (!this.f117221o) {
            this.f117220n = this.f117207a.play(this.f117219m, this.f117215i, this.f117216j, 1, this.f117213g ? -1 : 0, Nc.b.E(0.5f, this.f117217k * this.f117218l, 2.0f));
            this.f117224r = System.currentTimeMillis();
            N7.c.o().runOnUiThread(new RunnableC2017c());
            this.f117221o = true;
        } else if (this.f117222p) {
            this.f117224r = System.currentTimeMillis();
            N7.c.o().runOnUiThread(new d());
            this.f117207a.resume(this.f117220n);
            this.f117222p = false;
        }
        this.f117214h = this.f117213g;
    }

    @Override
    public void q() {
        if (this.f117221o) {
            this.f117221o = false;
            this.f117207a.stop(this.f117220n);
        }
        this.f117226t = 0L;
    }

    public C15387c(FileDescriptor fd2, long offset, long length, boolean loop) {
        super(loop);
        this.f117213g = true;
        this.f117217k = 1.0f;
        this.f117218l = 1.0f;
        this.f117219m = 0;
        this.f117226t = 0L;
        this.f117228v = new a();
        this.f117208b = f.Assets;
        this.f117209c = fd2;
        this.f117210d = offset;
        this.f117211e = length;
        this.f117213g = loop;
        E(this.f117212f, fd2, offset, length);
    }
}
