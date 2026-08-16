package p000if;

import com.jme3.app.Application;
import com.jme3.app.state.AbstractAppState;
import com.jme3.app.state.AppState;
import com.jme3.app.state.AppStateManager;
import com.jme3.renderer.RenderManager;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class C13726v extends AbstractAppState {

    public static final Logger f92167c = Logger.getLogger(C13726v.class.getName());

    public static final C13725u f92168d = new C13725u();

    public final List<AppState> f92169b;

    public C13726v(boolean z10) {
        this(z10 ? EnumC13712h.Enabled : EnumC13712h.Disabled);
    }

    public Collection<AppState> a() {
        return Collections.unmodifiableCollection(this.f92169b);
    }

    public boolean b(AppState appState) {
        return this.f92169b.contains(appState);
    }

    public final void c(AppState appState) {
        C13702E.t(appState, "app state");
        if (appState == this) {
            throw new IllegalArgumentException("self-influence not allowed");
        }
        if (appState.isEnabled() != isEnabled()) {
            f92167c.log(Level.WARNING, "influenced state {0} out-of-synch with {1}", new Object[]{appState, this});
        }
        this.f92169b.add(appState);
    }

    @Override
    public void cleanup() {
        if (!isInitialized()) {
            throw new IllegalStateException("should be initialized");
        }
        super.cleanup();
    }

    public void d(AppState appState) {
        this.f92169b.remove(appState);
    }

    @Override
    public void initialize(AppStateManager appStateManager, Application application) {
        Logger logger = f92167c;
        Level level = Level.INFO;
        if (logger.isLoggable(level)) {
            logger.log(level, "initialize {0}", getId());
        }
        if (isInitialized()) {
            throw new IllegalStateException("already initialized");
        }
        C13702E.t(appStateManager, "state manager");
        if (appStateManager != application.getStateManager()) {
            throw new IllegalArgumentException("wrong state manager");
        }
        super.initialize(appStateManager, application);
    }

    @Override
    public final boolean isEnabled() {
        return super.isEnabled();
    }

    @Override
    public final boolean isInitialized() {
        return super.isInitialized();
    }

    @Override
    public void postRender() {
        if (!isInitialized()) {
            throw new IllegalStateException("should be initialized");
        }
        if (!isEnabled()) {
            throw new IllegalStateException("should be enabled");
        }
        super.postRender();
    }

    @Override
    public void render(RenderManager renderManager) {
        C13702E.t(renderManager, "render manager");
        if (!isInitialized()) {
            throw new IllegalStateException("should be initialized");
        }
        if (!isEnabled()) {
            throw new IllegalStateException("should be enabled");
        }
        super.render(renderManager);
    }

    @Override
    public void setEnabled(boolean z10) {
        if (isEnabled() != z10) {
            Logger logger = f92167c;
            Level level = Level.INFO;
            if (logger.isLoggable(level)) {
                if (z10) {
                    logger.log(level, "enable {0}", getId());
                } else {
                    logger.log(level, "disable {0}", getId());
                }
            }
            super.setEnabled(z10);
            Iterator<AppState> it = this.f92169b.iterator();
            while (it.hasNext()) {
                it.next().setEnabled(z10);
            }
        }
    }

    @Override
    public void stateAttached(AppStateManager appStateManager) {
        Logger logger = f92167c;
        Level level = Level.INFO;
        if (logger.isLoggable(level)) {
            logger.log(level, "attach {0}", getId());
        }
        C13702E.t(appStateManager, "state manager");
        super.stateAttached(appStateManager);
    }

    @Override
    public void stateDetached(AppStateManager appStateManager) {
        Logger logger = f92167c;
        Level level = Level.INFO;
        if (logger.isLoggable(level)) {
            logger.log(level, "detach {0}", getId());
        }
        C13702E.t(appStateManager, "state manager");
        super.stateDetached(appStateManager);
    }

    public String toString() {
        return String.format("%s (%sinitialized, %sabled)", getId(), isInitialized() ? "" : "un", isEnabled() ? "en" : "dis");
    }

    @Override
    public void update(float f10) {
        C13702E.p(f10, "time between frames");
        if (!isInitialized()) {
            throw new IllegalStateException("should be initialized");
        }
        if (!isEnabled()) {
            throw new IllegalStateException("should be enabled");
        }
        super.update(f10);
    }

    public C13726v(EnumC13712h enumC13712h) {
        this.f92169b = new ArrayList(2);
        setId(f92168d.d(getClass().getSimpleName()));
        super.setEnabled(enumC13712h == EnumC13712h.Enabled);
    }
}
