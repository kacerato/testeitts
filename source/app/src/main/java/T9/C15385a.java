package t9;

import android.media.AudioAttributes;
import android.media.MediaPlayer;
import android.media.PlaybackParams;
import androidx.annotation.RequiresApi;
import java.io.FileDescriptor;
import java.io.IOException;

public class C15385a extends C15386b {

    public static final String f117187s = "LoopSoundEngine";

    public int f117188a;

    public MediaPlayer f117189b;

    public MediaPlayer f117190c;

    public b f117191d;

    public FileDescriptor f117192e;

    public long f117193f;

    public long f117194g;

    public String f117195h;

    public boolean f117196i;

    public boolean f117197j;

    public float f117198k;

    public float f117199l;

    public float f117200m;

    public float f117201n;

    public boolean f117202o;

    public int f117203p;

    public long f117204q;

    public final MediaPlayer.OnCompletionListener f117205r;

    public class C2015a implements MediaPlayer.OnCompletionListener {
        public C2015a() {
        }

        @Override
        public void onCompletion(MediaPlayer mediaPlayer) {
            if (!C15385a.this.f117196i || C15385a.this.f117197j) {
                return;
            }
            mediaPlayer.setOnCompletionListener(null);
            mediaPlayer.release();
            try {
                C15385a.this.C();
            } catch (Error | Exception e10) {
                e10.printStackTrace();
            }
            C15385a c15385a = C15385a.this;
            c15385a.f117189b = c15385a.f117190c;
            try {
                PlaybackParams playbackParams = C15385a.this.f117189b.getPlaybackParams();
                playbackParams.setPitch(C15385a.this.f117200m);
                playbackParams.setSpeed(C15385a.this.f117201n);
                C15385a.this.f117189b.setPlaybackParams(playbackParams);
            } catch (Exception e11) {
                e11.printStackTrace();
            }
            try {
                C15385a.this.f117189b.start();
                C15385a.this.f117189b.setOnCompletionListener(C15385a.this.f117205r);
            } catch (IllegalStateException e12) {
                e12.printStackTrace();
            }
            try {
                C15385a.this.f117189b.setVolume(C15385a.this.f117198k, C15385a.this.f117199l);
            } catch (IllegalStateException unused) {
            }
        }
    }

    public enum b {
        Assets,
        Path
    }

    public C15385a(String path, boolean loop) {
        super(loop);
        this.f117188a = 1;
        this.f117189b = null;
        this.f117190c = null;
        this.f117196i = true;
        this.f117197j = false;
        this.f117200m = 1.0f;
        this.f117201n = 1.0f;
        this.f117205r = new C2015a();
        this.f117191d = b.Path;
        this.f117195h = path;
        this.f117196i = loop;
        D(path, this.f117192e, this.f117193f, this.f117194g);
    }

    public final void C() {
        MediaPlayer mediaPlayer = new MediaPlayer();
        this.f117190c = mediaPlayer;
        mediaPlayer.setAudioAttributes(new AudioAttributes.Builder().setContentType(2).build());
        try {
            b bVar = this.f117191d;
            if (bVar == b.Assets) {
                this.f117190c.setDataSource(this.f117192e, this.f117193f, this.f117194g);
            } else if (bVar == b.Path) {
                this.f117190c.setDataSource(this.f117195h);
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        }
        try {
            PlaybackParams playbackParams = this.f117190c.getPlaybackParams();
            playbackParams.setPitch(this.f117200m);
            playbackParams.setSpeed(this.f117201n);
            this.f117190c.setPlaybackParams(playbackParams);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        try {
            this.f117190c.prepare();
        } catch (IOException e12) {
            e12.printStackTrace();
        }
        MediaPlayer mediaPlayer2 = this.f117189b;
        try {
            mediaPlayer2.setNextMediaPlayer(this.f117190c);
            mediaPlayer2.setOnCompletionListener(this.f117205r);
        } catch (Exception e13) {
            e13.printStackTrace();
        }
    }

    public final void D(String path, FileDescriptor fd2, long offset, long length) {
        MediaPlayer mediaPlayer = new MediaPlayer();
        this.f117189b = mediaPlayer;
        mediaPlayer.setAudioAttributes(new AudioAttributes.Builder().setContentType(2).build());
        try {
            b bVar = this.f117191d;
            if (bVar == b.Assets) {
                this.f117189b.setDataSource(fd2, offset, length);
            } else if (bVar == b.Path) {
                this.f117189b.setDataSource(path);
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        }
        try {
            PlaybackParams playbackParams = this.f117189b.getPlaybackParams();
            playbackParams.setPitch(this.f117200m);
            playbackParams.setSpeed(this.f117201n);
            this.f117189b.setPlaybackParams(playbackParams);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
        try {
            this.f117189b.prepare();
            this.f117204q = this.f117189b.getDuration();
            this.f117189b.setOnCompletionListener(this.f117205r);
            this.f117189b.start();
        } catch (IOException e12) {
            e12.printStackTrace();
        }
        if (this.f117196i) {
            C();
        }
    }

    @Override
    public float a() {
        return this.f117189b.getPlaybackParams().getPitch();
    }

    @Override
    public float b() {
        return this.f117189b.getPlaybackParams().getSpeed();
    }

    @Override
    public float c() {
        return this.f117200m;
    }

    @Override
    public long d() {
        return this.f117204q;
    }

    @Override
    public float e() {
        return this.f117201n;
    }

    @Override
    public boolean f() {
        return this.f117196i;
    }

    @Override
    public boolean g() {
        return this.f117202o;
    }

    @Override
    public boolean h() throws IllegalStateException {
        return this.f117189b.isPlaying();
    }

    @Override
    public void i() {
        try {
            this.f117203p = this.f117189b.getCurrentPosition();
            this.f117189b.pause();
            this.f117202o = true;
        } catch (IllegalStateException e10) {
            e10.printStackTrace();
        }
    }

    @Override
    public void j() {
        try {
            if (this.f117190c != null) {
                this.f117189b.release();
            }
            MediaPlayer mediaPlayer = this.f117190c;
            if (mediaPlayer != null) {
                mediaPlayer.release();
            }
        } catch (IllegalStateException e10) {
            e10.printStackTrace();
        }
    }

    @Override
    public void k(boolean loop) {
        this.f117196i = loop;
    }

    @Override
    public void l(float pitch) {
        this.f117200m = pitch;
        PlaybackParams playbackParams = this.f117189b.getPlaybackParams();
        playbackParams.setPitch(pitch);
        playbackParams.setSpeed(this.f117201n);
        this.f117189b.setPlaybackParams(playbackParams);
    }

    @Override
    @RequiresApi(api = 23)
    public void m(float pitch, float speed) {
        this.f117200m = pitch;
        this.f117201n = speed;
        PlaybackParams playbackParams = this.f117189b.getPlaybackParams();
        playbackParams.setPitch(pitch);
        playbackParams.setSpeed(speed);
        this.f117189b.setPlaybackParams(playbackParams);
    }

    @Override
    public void n(float speed) {
        this.f117201n = speed;
        PlaybackParams playbackParams = this.f117189b.getPlaybackParams();
        playbackParams.setPitch(this.f117200m);
        playbackParams.setSpeed(speed);
        this.f117189b.setPlaybackParams(playbackParams);
    }

    @Override
    public void o(float leftVolume, float rightVolume) {
        if (this.f117198k != leftVolume || this.f117199l != rightVolume) {
            this.f117189b.setVolume(leftVolume, rightVolume);
        }
        this.f117198k = leftVolume;
        this.f117199l = rightVolume;
    }

    @Override
    public void p() throws IllegalStateException {
        try {
            this.f117197j = false;
            if (!this.f117202o) {
                this.f117189b.seekTo(this.f117203p);
                this.f117202o = false;
            }
            this.f117189b.start();
        } catch (IllegalStateException e10) {
            e10.printStackTrace();
        }
    }

    @Override
    public void q() {
        MediaPlayer mediaPlayer = this.f117189b;
        if (mediaPlayer != null) {
            mediaPlayer.setOnCompletionListener(null);
            try {
                this.f117189b.stop();
            } catch (IllegalStateException e10) {
                e10.printStackTrace();
            }
        }
        MediaPlayer mediaPlayer2 = this.f117190c;
        if (mediaPlayer2 != null) {
            mediaPlayer2.setOnCompletionListener(null);
            try {
                this.f117190c.stop();
            } catch (IllegalStateException e11) {
                e11.printStackTrace();
            }
        }
        this.f117197j = true;
    }

    public C15385a(FileDescriptor fd2, long offset, long length, boolean loop) {
        super(loop);
        this.f117188a = 1;
        this.f117189b = null;
        this.f117190c = null;
        this.f117196i = true;
        this.f117197j = false;
        this.f117200m = 1.0f;
        this.f117201n = 1.0f;
        this.f117205r = new C2015a();
        this.f117191d = b.Assets;
        this.f117192e = fd2;
        this.f117193f = offset;
        this.f117194g = length;
        this.f117196i = loop;
        D(this.f117195h, fd2, offset, length);
    }
}
