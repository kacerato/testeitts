package com.jme3.app;

import com.jme3.app.state.AppState;
import com.jme3.app.state.AppStateManager;
import com.jme3.asset.AssetManager;
import com.jme3.audio.AudioContext;
import com.jme3.audio.AudioRenderer;
import com.jme3.audio.Listener;
import com.jme3.input.InputManager;
import com.jme3.input.JoyInput;
import com.jme3.input.KeyInput;
import com.jme3.input.MouseInput;
import com.jme3.input.TouchInput;
import com.jme3.math.Vector3f;
import com.jme3.profile.AppProfiler;
import com.jme3.profile.AppStep;
import com.jme3.renderer.Camera;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.Renderer;
import com.jme3.renderer.ViewPort;
import com.jme3.system.AppSettings;
import com.jme3.system.Displays;
import com.jme3.system.JmeContext;
import com.jme3.system.JmeSystem;
import com.jme3.system.NanoTimer;
import com.jme3.system.SystemListener;
import com.jme3.system.Timer;
import com.jme3.util.res.Resources;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Future;
import java.util.logging.Level;
import java.util.logging.Logger;

public class LegacyApplication implements Application, SystemListener {
    private static final Logger logger = Logger.getLogger(LegacyApplication.class.getName());
    protected AssetManager assetManager;
    protected AudioRenderer audioRenderer;
    protected Camera cam;
    protected JmeContext context;
    protected ViewPort guiViewPort;
    protected boolean inputEnabled;
    protected InputManager inputManager;
    protected JoyInput joyInput;
    protected KeyInput keyInput;
    protected Listener listener;
    protected LostFocusBehavior lostFocusBehavior;
    protected MouseInput mouseInput;
    protected boolean paused;
    protected AppProfiler prof;
    protected RenderManager renderManager;
    protected Renderer renderer;
    protected AppSettings settings;
    protected float speed;
    protected AppStateManager stateManager;
    private final ConcurrentLinkedQueue<AppTask<?>> taskQueue;
    protected Timer timer;
    protected TouchInput touchInput;
    protected ViewPort viewPort;

    public class RunnableWrapper implements Callable {
        private final Runnable runnable;

        public RunnableWrapper(Runnable runnable) {
            this.runnable = runnable;
        }

        @Override
        public Object call() {
            this.runnable.run();
            return null;
        }
    }

    public LegacyApplication() {
        this(null);
    }

    private void initAssetManager() {
        String string;
        AppSettings appSettings = this.settings;
        URL url = null;
        if (appSettings != null && (string = appSettings.getString("AssetConfigURL")) != null) {
            try {
                url = new URL(string);
            } catch (MalformedURLException unused) {
            }
            if (url == null && (url = Resources.getResource(string)) == null) {
                logger.log(Level.SEVERE, "Unable to access AssetConfigURL in asset config:{0}", string);
                return;
            }
        }
        if (url == null) {
            url = JmeSystem.getPlatformAssetConfigURL();
        }
        if (this.assetManager == null) {
            this.assetManager = JmeSystem.newAssetManager(url);
        }
    }

    private void initAudio() {
        if (this.settings.getAudioRenderer() == null || this.context.getType() == JmeContext.Type.Headless) {
            return;
        }
        AudioRenderer newAudioRenderer = JmeSystem.newAudioRenderer(this.settings);
        this.audioRenderer = newAudioRenderer;
        newAudioRenderer.initialize();
        AudioContext.setAudioRenderer(this.audioRenderer);
        Listener listener = new Listener();
        this.listener = listener;
        this.audioRenderer.setListener(listener);
    }

    private void initCamera() {
        Camera camera = new Camera(this.settings.getWidth(), this.settings.getHeight());
        this.cam = camera;
        camera.setFrustumPerspective(45.0f, camera.getWidth() / this.cam.getHeight(), 1.0f, 1000.0f);
        this.cam.setLocation(new Vector3f(0.0f, 0.0f, 10.0f));
        this.cam.lookAt(new Vector3f(0.0f, 0.0f, 0.0f), Vector3f.UNIT_Y);
        RenderManager renderManager = new RenderManager(this.renderer);
        this.renderManager = renderManager;
        renderManager.setTimer(this.timer);
        AppProfiler appProfiler = this.prof;
        if (appProfiler != null) {
            this.renderManager.setAppProfiler(appProfiler);
        }
        ViewPort createMainView = this.renderManager.createMainView("Default", this.cam);
        this.viewPort = createMainView;
        createMainView.setClearFlags(true, true, true);
        ViewPort createPostView = this.renderManager.createPostView("Gui Default", new Camera(this.settings.getWidth(), this.settings.getHeight()));
        this.guiViewPort = createPostView;
        createPostView.setClearFlags(false, false, false);
    }

    private void initDisplay() {
        this.settings = this.context.getSettings();
        if (this.timer == null) {
            this.timer = this.context.getTimer();
        }
        this.renderer = this.context.getRenderer();
    }

    private void initInput() {
        MouseInput mouseInput = this.context.getMouseInput();
        this.mouseInput = mouseInput;
        if (mouseInput != null) {
            mouseInput.initialize();
        }
        KeyInput keyInput = this.context.getKeyInput();
        this.keyInput = keyInput;
        if (keyInput != null) {
            keyInput.initialize();
        }
        TouchInput touchInput = this.context.getTouchInput();
        this.touchInput = touchInput;
        if (touchInput != null) {
            touchInput.initialize();
        }
        if (this.settings.useJoysticks()) {
            JoyInput joyInput = this.context.getJoyInput();
            this.joyInput = joyInput;
            if (joyInput != null) {
                joyInput.initialize();
            }
        }
        this.inputManager = new InputManager(this.mouseInput, this.keyInput, this.joyInput, this.touchInput);
    }

    private void initStateManager() {
        AppStateManager appStateManager = new AppStateManager(this);
        this.stateManager = appStateManager;
        appStateManager.attach(new ResetStatsState());
    }

    public void createCanvas() {
        JmeContext jmeContext = this.context;
        if (jmeContext != null && jmeContext.isCreated()) {
            logger.warning("createCanvas() called when application already created!");
            return;
        }
        if (this.settings == null) {
            this.settings = new AppSettings(true);
        }
        Logger logger2 = logger;
        Level level = Level.FINE;
        if (logger2.isLoggable(level)) {
            logger2.log(level, "Starting application: {0}", getClass().getName());
        }
        JmeContext newContext = JmeSystem.newContext(this.settings, JmeContext.Type.Canvas);
        this.context = newContext;
        newContext.setSystemListener(this);
    }

    @Override
    public void destroy() {
        this.stateManager.cleanup();
        destroyInput();
        AudioRenderer audioRenderer = this.audioRenderer;
        if (audioRenderer != null) {
            audioRenderer.cleanup();
        }
        this.timer.reset();
    }

    public void destroyInput() {
        MouseInput mouseInput = this.mouseInput;
        if (mouseInput != null) {
            mouseInput.destroy();
        }
        KeyInput keyInput = this.keyInput;
        if (keyInput != null) {
            keyInput.destroy();
        }
        JoyInput joyInput = this.joyInput;
        if (joyInput != null) {
            joyInput.destroy();
        }
        TouchInput touchInput = this.touchInput;
        if (touchInput != null) {
            touchInput.destroy();
        }
        this.inputManager = null;
    }

    @Override
    public <V> Future<V> enqueue(Callable<V> callable) {
        AppTask<?> appTask = new AppTask<>(callable);
        this.taskQueue.add(appTask);
        return appTask;
    }

    @Override
    public void gainFocus() {
        LostFocusBehavior lostFocusBehavior = this.lostFocusBehavior;
        if (lostFocusBehavior != LostFocusBehavior.Disabled) {
            if (lostFocusBehavior == LostFocusBehavior.PauseOnLostFocus) {
                this.paused = false;
            }
            this.context.setAutoFlushFrames(true);
            InputManager inputManager = this.inputManager;
            if (inputManager != null) {
                inputManager.reset();
            }
        }
    }

    @Override
    public AppProfiler getAppProfiler() {
        return this.prof;
    }

    @Override
    public AssetManager getAssetManager() {
        return this.assetManager;
    }

    @Override
    public AudioRenderer getAudioRenderer() {
        return this.audioRenderer;
    }

    @Override
    public Camera getCamera() {
        return this.cam;
    }

    @Override
    public JmeContext getContext() {
        return this.context;
    }

    public Displays getDisplays() {
        return this.context.getDisplays();
    }

    @Override
    public ViewPort getGuiViewPort() {
        return this.guiViewPort;
    }

    @Override
    public InputManager getInputManager() {
        return this.inputManager;
    }

    @Override
    public Listener getListener() {
        return this.listener;
    }

    @Override
    public LostFocusBehavior getLostFocusBehavior() {
        return this.lostFocusBehavior;
    }

    public int getPrimaryDisplay() {
        return this.context.getPrimaryDisplay();
    }

    @Override
    public RenderManager getRenderManager() {
        return this.renderManager;
    }

    @Override
    public Renderer getRenderer() {
        return this.renderer;
    }

    @Override
    public AppStateManager getStateManager() {
        return this.stateManager;
    }

    @Override
    public Timer getTimer() {
        return this.timer;
    }

    @Override
    public ViewPort getViewPort() {
        return this.viewPort;
    }

    @Override
    public void handleError(String str, Throwable th2) {
        String str2;
        logger.log(Level.SEVERE, str, th2);
        if (this.context.getType() != JmeContext.Type.Headless) {
            if (th2 != null) {
                StringBuilder sb2 = new StringBuilder();
                sb2.append(str);
                sb2.append("\n");
                sb2.append(th2.getClass().getSimpleName());
                if (th2.getMessage() != null) {
                    str2 = ": " + th2.getMessage();
                } else {
                    str2 = "";
                }
                sb2.append(str2);
                JmeSystem.handleErrorMessage(sb2.toString());
            } else {
                JmeSystem.handleErrorMessage(str);
            }
        }
        stop();
    }

    @Override
    public void initialize() {
        if (this.assetManager == null) {
            initAssetManager();
        }
        initDisplay();
        initCamera();
        if (this.inputEnabled) {
            initInput();
        }
        initAudio();
        this.timer.reset();
    }

    @Override
    public boolean isPauseOnLostFocus() {
        return getLostFocusBehavior() == LostFocusBehavior.PauseOnLostFocus;
    }

    @Override
    public void loseFocus() {
        LostFocusBehavior lostFocusBehavior = this.lostFocusBehavior;
        if (lostFocusBehavior != LostFocusBehavior.Disabled) {
            if (lostFocusBehavior == LostFocusBehavior.PauseOnLostFocus) {
                this.paused = true;
            }
            this.context.setAutoFlushFrames(false);
        }
    }

    @Override
    public void requestClose(boolean z10) {
        this.context.destroy(false);
    }

    @Override
    public void rescale(float f10, float f11) {
        RenderManager renderManager = this.renderManager;
        if (renderManager != null) {
            renderManager.notifyRescale(f10, f11);
        }
    }

    @Override
    public void reshape(int i10, int i11) {
        RenderManager renderManager = this.renderManager;
        if (renderManager != null) {
            renderManager.notifyReshape(i10, i11);
        }
    }

    @Override
    public void restart() {
        this.context.setSettings(this.settings);
        this.context.restart();
    }

    public void runQueuedTasks() {
        while (true) {
            AppTask<?> poll = this.taskQueue.poll();
            if (poll == null) {
                return;
            }
            if (!poll.isCancelled()) {
                poll.invoke();
            }
        }
    }

    @Override
    public void setAppProfiler(AppProfiler appProfiler) {
        this.prof = appProfiler;
        RenderManager renderManager = this.renderManager;
        if (renderManager != null) {
            renderManager.setAppProfiler(appProfiler);
        }
    }

    @Deprecated
    public void setAssetManager(AssetManager assetManager) {
        if (this.assetManager != null) {
            throw new IllegalStateException("Can only set asset manager before initialization.");
        }
        this.assetManager = assetManager;
    }

    @Override
    public void setLostFocusBehavior(LostFocusBehavior lostFocusBehavior) {
        this.lostFocusBehavior = lostFocusBehavior;
    }

    @Override
    public void setPauseOnLostFocus(boolean z10) {
        if (z10) {
            setLostFocusBehavior(LostFocusBehavior.PauseOnLostFocus);
        } else {
            setLostFocusBehavior(LostFocusBehavior.Disabled);
        }
    }

    @Override
    public void setSettings(AppSettings appSettings) {
        this.settings = appSettings;
        if (this.context != null) {
            boolean useInput = appSettings.useInput();
            boolean z10 = this.inputEnabled;
            if (useInput != z10) {
                this.inputEnabled = !z10;
                if (z10) {
                    destroyInput();
                    return;
                } else {
                    initInput();
                    return;
                }
            }
        }
        this.inputEnabled = appSettings.useInput();
    }

    @Override
    public void setTimer(Timer timer) {
        this.timer = timer;
        if (timer != null) {
            timer.reset();
        }
        RenderManager renderManager = this.renderManager;
        if (renderManager != null) {
            renderManager.setTimer(timer);
        }
    }

    @Override
    public void start() {
        start(JmeContext.Type.Display, false);
    }

    public void startCanvas() {
        startCanvas(false);
    }

    @Override
    public void stop() {
        stop(false);
    }

    @Override
    public void update() {
        AudioContext.setAudioRenderer(this.audioRenderer);
        AppProfiler appProfiler = this.prof;
        if (appProfiler != null) {
            appProfiler.appStep(AppStep.QueuedTasks);
        }
        runQueuedTasks();
        if (this.speed == 0.0f || this.paused) {
            return;
        }
        this.timer.update();
        if (this.inputEnabled) {
            AppProfiler appProfiler2 = this.prof;
            if (appProfiler2 != null) {
                appProfiler2.appStep(AppStep.ProcessInput);
            }
            this.inputManager.update(this.timer.getTimePerFrame());
        }
        if (this.audioRenderer != null) {
            AppProfiler appProfiler3 = this.prof;
            if (appProfiler3 != null) {
                appProfiler3.appStep(AppStep.ProcessAudio);
            }
            this.audioRenderer.update(this.timer.getTimePerFrame());
        }
    }

    public LegacyApplication(AppState... appStateArr) {
        this.timer = new NanoTimer();
        this.inputEnabled = true;
        this.lostFocusBehavior = LostFocusBehavior.ThrottleOnLostFocus;
        this.speed = 1.0f;
        this.paused = false;
        this.taskQueue = new ConcurrentLinkedQueue<>();
        initStateManager();
        if (appStateArr != null) {
            for (AppState appState : appStateArr) {
                if (appState != null) {
                    this.stateManager.attach(appState);
                }
            }
        }
    }

    @Override
    public void start(boolean z10) {
        start(JmeContext.Type.Display, z10);
    }

    public void startCanvas(boolean z10) {
        this.context.create(z10);
    }

    @Override
    public void stop(boolean z10) {
        logger.log(Level.FINE, "Closing application: {0}", getClass().getName());
        this.context.destroy(z10);
    }

    @Override
    public void enqueue(Runnable runnable) {
        enqueue(new RunnableWrapper(runnable));
    }

    public void start(JmeContext.Type type) {
        start(type, false);
    }

    public void start(JmeContext.Type type, boolean z10) {
        JmeContext jmeContext = this.context;
        if (jmeContext != null && jmeContext.isCreated()) {
            logger.warning("start() called when application already created!");
            return;
        }
        if (this.settings == null) {
            this.settings = new AppSettings(true);
        }
        logger.log(Level.FINE, "Starting application: {0}", getClass().getName());
        JmeContext newContext = JmeSystem.newContext(this.settings, type);
        this.context = newContext;
        newContext.setSystemListener(this);
        this.context.create(z10);
    }
}
