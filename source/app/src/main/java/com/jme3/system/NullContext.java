package com.jme3.system;

import com.jme3.input.JoyInput;
import com.jme3.input.KeyInput;
import com.jme3.input.MouseInput;
import com.jme3.input.TouchInput;
import com.jme3.input.dummy.DummyKeyInput;
import com.jme3.input.dummy.DummyMouseInput;
import com.jme3.opencl.Context;
import com.jme3.renderer.Renderer;
import com.jme3.system.JmeContext;
import java.lang.Thread;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.logging.Level;
import java.util.logging.Logger;

public class NullContext implements JmeContext, Runnable {
    protected static final String THREAD_NAME = "jME3 Headless Main";
    protected static final Logger logger = Logger.getLogger(NullContext.class.getName());
    protected int frameRate;
    protected SystemListener listener;
    protected NullRenderer renderer;
    private long timeLate;
    private long timeThen;
    protected Timer timer;
    protected AtomicBoolean created = new AtomicBoolean(false);
    protected AtomicBoolean needClose = new AtomicBoolean(false);
    protected final Object createdLock = new Object();
    protected AppSettings settings = new AppSettings(true);

    @Override
    public void create(boolean z10) {
        if (this.created.get()) {
            logger.warning("create() called when NullContext is already created!");
            return;
        }
        new Thread(this, THREAD_NAME).start();
        if (z10) {
            waitFor(true);
        }
    }

    public void deinitInThread() {
        this.listener.destroy();
        this.timer = null;
        synchronized (this.createdLock) {
            this.created.set(false);
            this.createdLock.notifyAll();
        }
    }

    @Override
    public void destroy(boolean z10) {
        this.needClose.set(true);
        if (z10) {
            waitFor(false);
        }
    }

    @Override
    public Displays getDisplays() {
        return null;
    }

    @Override
    public int getFramebufferHeight() {
        throw new UnsupportedOperationException("null context");
    }

    @Override
    public int getFramebufferWidth() {
        throw new UnsupportedOperationException("null context");
    }

    @Override
    public JoyInput getJoyInput() {
        return null;
    }

    @Override
    public KeyInput getKeyInput() {
        return new DummyKeyInput();
    }

    @Override
    public MouseInput getMouseInput() {
        return new DummyMouseInput();
    }

    @Override
    public Context getOpenCLContext() {
        return null;
    }

    @Override
    public int getPrimaryDisplay() {
        return 0;
    }

    @Override
    public Renderer getRenderer() {
        return this.renderer;
    }

    @Override
    public AppSettings getSettings() {
        return this.settings;
    }

    @Override
    public SystemListener getSystemListener() {
        return this.listener;
    }

    @Override
    public Timer getTimer() {
        return this.timer;
    }

    @Override
    public TouchInput getTouchInput() {
        return null;
    }

    @Override
    public JmeContext.Type getType() {
        return JmeContext.Type.Headless;
    }

    @Override
    public int getWindowXPosition() {
        throw new UnsupportedOperationException("null context");
    }

    @Override
    public int getWindowYPosition() {
        throw new UnsupportedOperationException("null context");
    }

    public void initInThread() {
        Logger logger2 = logger;
        logger2.fine("NullContext created.");
        Level level = Level.FINE;
        if (logger2.isLoggable(level)) {
            logger2.log(level, "Running on thread: {0}", Thread.currentThread().getName());
        }
        Thread.setDefaultUncaughtExceptionHandler(new Thread.UncaughtExceptionHandler() {
            @Override
            public void uncaughtException(Thread thread, Throwable th2) {
                NullContext.this.listener.handleError("Uncaught exception thrown in " + thread.toString(), th2);
            }
        });
        this.timer = new NanoTimer();
        this.renderer = new NullRenderer();
        synchronized (this.createdLock) {
            this.created.set(true);
            this.createdLock.notifyAll();
        }
        this.listener.initialize();
    }

    @Override
    public boolean isCreated() {
        return this.created.get();
    }

    @Override
    public boolean isRenderable() {
        return true;
    }

    @Override
    public void restart() {
    }

    @Override
    public void run() {
        initInThread();
        do {
            this.listener.update();
            int i10 = this.frameRate;
            if (i10 > 0) {
                sync(i10);
            }
        } while (!this.needClose.get());
        deinitInThread();
        logger.fine("NullContext destroyed.");
    }

    @Override
    public void setAutoFlushFrames(boolean z10) {
    }

    @Override
    public void setSettings(AppSettings appSettings) {
        this.settings.copyFrom(appSettings);
        int frameRate = appSettings.getFrameRate();
        this.frameRate = frameRate;
        if (frameRate <= 0) {
            this.frameRate = 60;
        }
    }

    @Override
    public void setSystemListener(SystemListener systemListener) {
        this.listener = systemListener;
    }

    @Override
    public void setTitle(String str) {
    }

    public void sync(int i10) {
        long resolution = (this.timer.getResolution() / i10) + this.timeThen;
        long time = this.timer.getTime();
        long j10 = this.timeLate;
        while (resolution > time + j10) {
            try {
                Thread.sleep(1L);
                time = this.timer.getTime();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        }
        if (resolution < time) {
            this.timeLate = time - resolution;
        } else {
            this.timeLate = 0L;
        }
        this.timeThen = time;
    }

    public void waitFor(boolean z10) {
        synchronized (this.createdLock) {
            while (this.created.get() != z10) {
                try {
                    this.createdLock.wait();
                } catch (InterruptedException unused) {
                }
            }
        }
    }

    public void destroy() {
        destroy(false);
    }

    public void create() {
        create(false);
    }
}
