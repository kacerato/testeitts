package com.jme3.app.state;

import com.jme3.app.Application;
import com.jme3.input.InputManager;
import com.jme3.input.controls.ActionListener;
import com.jme3.input.controls.KeyTrigger;
import com.jme3.post.SceneProcessor;
import com.jme3.profile.AppProfiler;
import com.jme3.renderer.Camera;
import com.jme3.renderer.RenderManager;
import com.jme3.renderer.Renderer;
import com.jme3.renderer.ViewPort;
import com.jme3.renderer.queue.RenderQueue;
import com.jme3.system.JmeSystem;
import com.jme3.texture.FrameBuffer;
import com.jme3.util.BufferUtils;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class ScreenshotAppState extends AbstractAppState implements ActionListener, SceneProcessor {
    private static final Logger logger = Logger.getLogger(ScreenshotAppState.class.getName());
    private boolean capture;
    private String filePath;
    private int height;
    private InputManager inputManager;
    private ViewPort last;
    private boolean numbered;
    private ByteBuffer outBuf;
    private Renderer renderer;

    private RenderManager f81559rm;
    private long shotIndex;
    private String shotName;
    private int width;

    public ScreenshotAppState() {
        this(null);
    }

    @Override
    public void cleanup() {
        InputManager inputManager = this.inputManager;
        if (inputManager != null) {
            inputManager.deleteMapping("ScreenShot");
            this.inputManager.removeListener(this);
            this.inputManager = null;
        }
        ViewPort viewPort = this.last;
        if (viewPort != null) {
            this.last = null;
            viewPort.removeProcessor(this);
        }
        super.cleanup();
    }

    @Override
    public void initialize(AppStateManager appStateManager, Application application) {
        if (!super.isInitialized()) {
            InputManager inputManager = application.getInputManager();
            this.inputManager = inputManager;
            inputManager.addMapping("ScreenShot", new KeyTrigger(183));
            this.inputManager.addListener(this, "ScreenShot");
            List<ViewPort> postViews = application.getRenderManager().getPostViews();
            ViewPort viewPort = postViews.get(postViews.size() - 1);
            this.last = viewPort;
            viewPort.addProcessor(this);
            if (this.shotName == null) {
                this.shotName = application.getClass().getSimpleName();
            }
        }
        super.initialize(appStateManager, application);
    }

    @Override
    public boolean isInitialized() {
        return super.isInitialized() && this.renderer != null;
    }

    @Override
    public void onAction(String str, boolean z10, float f10) {
        if (z10) {
            this.capture = true;
        }
    }

    @Override
    public void postFrame(FrameBuffer frameBuffer) {
        String str;
        File absoluteFile;
        if (this.capture) {
            this.capture = false;
            Camera currentCamera = this.f81559rm.getCurrentCamera();
            int viewPortLeft = (int) (currentCamera.getViewPortLeft() * currentCamera.getWidth());
            int viewPortBottom = (int) (currentCamera.getViewPortBottom() * currentCamera.getHeight());
            int viewPortRight = (int) ((currentCamera.getViewPortRight() - currentCamera.getViewPortLeft()) * currentCamera.getWidth());
            int viewPortTop = (int) ((currentCamera.getViewPortTop() - currentCamera.getViewPortBottom()) * currentCamera.getHeight());
            this.renderer.setViewPort(0, 0, this.width, this.height);
            this.renderer.readFrameBuffer(frameBuffer, this.outBuf);
            this.renderer.setViewPort(viewPortLeft, viewPortBottom, viewPortRight, viewPortTop);
            if (this.numbered) {
                this.shotIndex++;
                str = this.shotName + this.shotIndex;
            } else {
                str = this.shotName;
            }
            if (this.filePath == null) {
                absoluteFile = new File(((Object) JmeSystem.getStorageFolder()) + File.separator + str + ".png").getAbsoluteFile();
            } else {
                absoluteFile = new File(this.filePath + str + ".png").getAbsoluteFile();
            }
            Logger logger2 = logger;
            Level level = Level.FINE;
            if (logger2.isLoggable(level)) {
                logger2.log(level, "Saving ScreenShot to: {0}", absoluteFile.getAbsolutePath());
            }
            try {
                writeImageFile(absoluteFile);
            } catch (IOException e10) {
                logger.log(Level.SEVERE, "Error while saving screenshot", (Throwable) e10);
            }
        }
    }

    @Override
    public void postQueue(RenderQueue renderQueue) {
    }

    @Override
    public void preFrame(float f10) {
    }

    @Override
    public void reshape(ViewPort viewPort, int i10, int i11) {
        this.outBuf = BufferUtils.createByteBuffer(i10 * i11 * 4);
        this.width = i10;
        this.height = i11;
    }

    public void setFileName(String str) {
        this.shotName = str;
    }

    public void setFilePath(String str) {
        this.filePath = str;
    }

    public void setIsNumbered(boolean z10) {
        this.numbered = z10;
    }

    @Override
    public void setProfiler(AppProfiler appProfiler) {
    }

    public void setShotIndex(long j10) {
        this.shotIndex = j10;
    }

    public void takeScreenshot() {
        this.capture = true;
    }

    public void writeImageFile(File file) throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(file);
        try {
            JmeSystem.writeImageFile(fileOutputStream, "png", this.outBuf, this.width, this.height);
        } finally {
            fileOutputStream.close();
        }
    }

    public ScreenshotAppState(String str) {
        this.capture = false;
        this.numbered = true;
        this.shotIndex = 0L;
        this.filePath = str;
    }

    public ScreenshotAppState(String str, String str2) {
        this.capture = false;
        this.numbered = true;
        this.shotIndex = 0L;
        this.filePath = str;
        this.shotName = str2;
    }

    @Override
    public void initialize(RenderManager renderManager, ViewPort viewPort) {
        this.renderer = renderManager.getRenderer();
        this.f81559rm = renderManager;
        reshape(viewPort, viewPort.getCamera().getWidth(), viewPort.getCamera().getHeight());
    }

    public ScreenshotAppState(String str, long j10) {
        this.capture = false;
        this.numbered = true;
        this.filePath = str;
        this.shotIndex = j10;
    }

    public ScreenshotAppState(String str, String str2, long j10) {
        this.capture = false;
        this.numbered = true;
        this.filePath = str;
        this.shotName = str2;
        this.shotIndex = j10;
    }
}
