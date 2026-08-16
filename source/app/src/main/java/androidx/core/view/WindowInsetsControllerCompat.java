package androidx.core.view;

import android.content.Context;
import android.opengl.GLES30;
import android.os.Build;
import android.os.CancellationSignal;
import android.view.View;
import android.view.Window;
import android.view.WindowInsetsAnimationControlListener;
import android.view.WindowInsetsAnimationController;
import android.view.WindowInsetsController;
import android.view.animation.Interpolator;
import android.view.inputmethod.InputMethodManager;
import androidx.collection.SimpleArrayMap;
import androidx.core.view.WindowInsetsControllerCompat;

public final class WindowInsetsControllerCompat {
    public static final int BEHAVIOR_SHOW_BARS_BY_SWIPE = 1;
    public static final int BEHAVIOR_SHOW_BARS_BY_TOUCH = 0;
    public static final int BEHAVIOR_SHOW_TRANSIENT_BARS_BY_SWIPE = 2;
    private final Impl mImpl;

    public static class Impl {
        public void addOnControllableInsetsChangedListener(OnControllableInsetsChangedListener onControllableInsetsChangedListener) {
        }

        public void controlWindowInsetsAnimation(int i10, long j10, Interpolator interpolator, CancellationSignal cancellationSignal, WindowInsetsAnimationControlListenerCompat windowInsetsAnimationControlListenerCompat) {
        }

        public int getSystemBarsBehavior() {
            return 0;
        }

        public void hide(int i10) {
        }

        public boolean isAppearanceLightNavigationBars() {
            return false;
        }

        public boolean isAppearanceLightStatusBars() {
            return false;
        }

        public void removeOnControllableInsetsChangedListener(OnControllableInsetsChangedListener onControllableInsetsChangedListener) {
        }

        public void setAppearanceLightNavigationBars(boolean z10) {
        }

        public void setAppearanceLightStatusBars(boolean z10) {
        }

        public void setSystemBarsBehavior(int i10) {
        }

        public void show(int i10) {
        }
    }

    public static class Impl20 extends Impl {
        private final View mView;
        protected final Window mWindow;

        public Impl20(Window window, View view) {
            this.mWindow = window;
            this.mView = view;
        }

        private void hideForType(int i10) {
            if (i10 == 1) {
                setSystemUiFlag(4);
            } else if (i10 == 2) {
                setSystemUiFlag(2);
            } else {
                if (i10 != 8) {
                    return;
                }
                ((InputMethodManager) this.mWindow.getContext().getSystemService(Context.INPUT_METHOD_SERVICE)).hideSoftInputFromWindow(this.mWindow.getDecorView().getWindowToken(), 0);
            }
        }

        public static void lambda$showForType$0(View view) {
            ((InputMethodManager) view.getContext().getSystemService(Context.INPUT_METHOD_SERVICE)).showSoftInput(view, 0);
        }

        private void showForType(int i10) {
            if (i10 == 1) {
                unsetSystemUiFlag(4);
                unsetWindowFlag(1024);
                return;
            }
            if (i10 == 2) {
                unsetSystemUiFlag(2);
                return;
            }
            if (i10 != 8) {
                return;
            }
            final View view = this.mView;
            if (view.isInEditMode() || view.onCheckIsTextEditor()) {
                view.requestFocus();
            } else {
                view = this.mWindow.getCurrentFocus();
            }
            if (view == null) {
                view = this.mWindow.findViewById(16908290);
            }
            if (view == null || !view.hasWindowFocus()) {
                return;
            }
            view.post(new Runnable() {
                @Override
                public final void run() {
                    WindowInsetsControllerCompat.Impl20.lambda$showForType$0(View.this);
                }
            });
        }

        @Override
        public void addOnControllableInsetsChangedListener(OnControllableInsetsChangedListener onControllableInsetsChangedListener) {
        }

        @Override
        public void controlWindowInsetsAnimation(int i10, long j10, Interpolator interpolator, CancellationSignal cancellationSignal, WindowInsetsAnimationControlListenerCompat windowInsetsAnimationControlListenerCompat) {
        }

        @Override
        public int getSystemBarsBehavior() {
            return 0;
        }

        @Override
        public void hide(int i10) {
            for (int i11 = 1; i11 <= 256; i11 <<= 1) {
                if ((i10 & i11) != 0) {
                    hideForType(i11);
                }
            }
        }

        @Override
        public void removeOnControllableInsetsChangedListener(OnControllableInsetsChangedListener onControllableInsetsChangedListener) {
        }

        @Override
        public void setSystemBarsBehavior(int i10) {
            if (i10 == 0) {
                unsetSystemUiFlag(GLES30.GL_COLOR);
                return;
            }
            if (i10 == 1) {
                unsetSystemUiFlag(4096);
                setSystemUiFlag(2048);
            } else {
                if (i10 != 2) {
                    return;
                }
                unsetSystemUiFlag(2048);
                setSystemUiFlag(4096);
            }
        }

        public void setSystemUiFlag(int i10) {
            View decorView = this.mWindow.getDecorView();
            decorView.setSystemUiVisibility(i10 | decorView.getSystemUiVisibility());
        }

        public void setWindowFlag(int i10) {
            this.mWindow.addFlags(i10);
        }

        @Override
        public void show(int i10) {
            for (int i11 = 1; i11 <= 256; i11 <<= 1) {
                if ((i10 & i11) != 0) {
                    showForType(i11);
                }
            }
        }

        public void unsetSystemUiFlag(int i10) {
            View decorView = this.mWindow.getDecorView();
            decorView.setSystemUiVisibility((~i10) & decorView.getSystemUiVisibility());
        }

        public void unsetWindowFlag(int i10) {
            this.mWindow.clearFlags(i10);
        }
    }

    public static class Impl23 extends Impl20 {
        public Impl23(Window window, View view) {
            super(window, view);
        }

        @Override
        public boolean isAppearanceLightStatusBars() {
            return (this.mWindow.getDecorView().getSystemUiVisibility() & 8192) != 0;
        }

        @Override
        public void setAppearanceLightStatusBars(boolean z10) {
            if (!z10) {
                unsetSystemUiFlag(8192);
                return;
            }
            unsetWindowFlag(67108864);
            setWindowFlag(Integer.MIN_VALUE);
            setSystemUiFlag(8192);
        }
    }

    public static class Impl26 extends Impl23 {
        public Impl26(Window window, View view) {
            super(window, view);
        }

        @Override
        public boolean isAppearanceLightNavigationBars() {
            return (this.mWindow.getDecorView().getSystemUiVisibility() & 16) != 0;
        }

        @Override
        public void setAppearanceLightNavigationBars(boolean z10) {
            if (!z10) {
                unsetSystemUiFlag(16);
                return;
            }
            unsetWindowFlag(134217728);
            setWindowFlag(Integer.MIN_VALUE);
            setSystemUiFlag(16);
        }
    }

    public interface OnControllableInsetsChangedListener {
        void onControllableInsetsChanged(WindowInsetsControllerCompat windowInsetsControllerCompat, int i10);
    }

    @Deprecated
    private WindowInsetsControllerCompat(WindowInsetsController windowInsetsController) {
        this.mImpl = new Impl30(windowInsetsController, this);
    }

    @Deprecated
    public static WindowInsetsControllerCompat toWindowInsetsControllerCompat(WindowInsetsController windowInsetsController) {
        return new WindowInsetsControllerCompat(windowInsetsController);
    }

    public void addOnControllableInsetsChangedListener(OnControllableInsetsChangedListener onControllableInsetsChangedListener) {
        this.mImpl.addOnControllableInsetsChangedListener(onControllableInsetsChangedListener);
    }

    public void controlWindowInsetsAnimation(int i10, long j10, Interpolator interpolator, CancellationSignal cancellationSignal, WindowInsetsAnimationControlListenerCompat windowInsetsAnimationControlListenerCompat) {
        this.mImpl.controlWindowInsetsAnimation(i10, j10, interpolator, cancellationSignal, windowInsetsAnimationControlListenerCompat);
    }

    public int getSystemBarsBehavior() {
        return this.mImpl.getSystemBarsBehavior();
    }

    public void hide(int i10) {
        this.mImpl.hide(i10);
    }

    public boolean isAppearanceLightNavigationBars() {
        return this.mImpl.isAppearanceLightNavigationBars();
    }

    public boolean isAppearanceLightStatusBars() {
        return this.mImpl.isAppearanceLightStatusBars();
    }

    public void removeOnControllableInsetsChangedListener(OnControllableInsetsChangedListener onControllableInsetsChangedListener) {
        this.mImpl.removeOnControllableInsetsChangedListener(onControllableInsetsChangedListener);
    }

    public void setAppearanceLightNavigationBars(boolean z10) {
        this.mImpl.setAppearanceLightNavigationBars(z10);
    }

    public void setAppearanceLightStatusBars(boolean z10) {
        this.mImpl.setAppearanceLightStatusBars(z10);
    }

    public void setSystemBarsBehavior(int i10) {
        this.mImpl.setSystemBarsBehavior(i10);
    }

    public void show(int i10) {
        this.mImpl.show(i10);
    }

    public static class Impl30 extends Impl {
        final WindowInsetsControllerCompat mCompatController;
        final WindowInsetsController mInsetsController;
        private final SimpleArrayMap<OnControllableInsetsChangedListener, WindowInsetsController.OnControllableInsetsChangedListener> mListeners;
        protected Window mWindow;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Impl30(Window window, WindowInsetsControllerCompat windowInsetsControllerCompat) {
            this(r0, windowInsetsControllerCompat);
            WindowInsetsController insetsController;
            insetsController = window.getInsetsController();
            this.mWindow = window;
        }

        public void lambda$addOnControllableInsetsChangedListener$0(OnControllableInsetsChangedListener onControllableInsetsChangedListener, WindowInsetsController windowInsetsController, int i10) {
            if (this.mInsetsController == windowInsetsController) {
                onControllableInsetsChangedListener.onControllableInsetsChanged(this.mCompatController, i10);
            }
        }

        @Override
        public void addOnControllableInsetsChangedListener(final OnControllableInsetsChangedListener onControllableInsetsChangedListener) {
            if (this.mListeners.containsKey(onControllableInsetsChangedListener)) {
                return;
            }
            WindowInsetsController.OnControllableInsetsChangedListener onControllableInsetsChangedListener2 = new WindowInsetsController.OnControllableInsetsChangedListener() {
                @Override
                public final void onControllableInsetsChanged(WindowInsetsController windowInsetsController, int i10) {
                    WindowInsetsControllerCompat.Impl30.this.lambda$addOnControllableInsetsChangedListener$0(onControllableInsetsChangedListener, windowInsetsController, i10);
                }
            };
            this.mListeners.put(onControllableInsetsChangedListener, onControllableInsetsChangedListener2);
            this.mInsetsController.addOnControllableInsetsChangedListener(onControllableInsetsChangedListener2);
        }

        @Override
        public void controlWindowInsetsAnimation(int i10, long j10, Interpolator interpolator, CancellationSignal cancellationSignal, final WindowInsetsAnimationControlListenerCompat windowInsetsAnimationControlListenerCompat) {
            this.mInsetsController.controlWindowInsetsAnimation(i10, j10, interpolator, cancellationSignal, new WindowInsetsAnimationControlListener() {
                private WindowInsetsAnimationControllerCompat mCompatAnimController = null;

                public void onCancelled(WindowInsetsAnimationController windowInsetsAnimationController) {
                    windowInsetsAnimationControlListenerCompat.onCancelled(windowInsetsAnimationController == null ? null : this.mCompatAnimController);
                }

                public void onFinished(WindowInsetsAnimationController windowInsetsAnimationController) {
                    windowInsetsAnimationControlListenerCompat.onFinished(this.mCompatAnimController);
                }

                public void onReady(WindowInsetsAnimationController windowInsetsAnimationController, int i11) {
                    WindowInsetsAnimationControllerCompat windowInsetsAnimationControllerCompat = new WindowInsetsAnimationControllerCompat(windowInsetsAnimationController);
                    this.mCompatAnimController = windowInsetsAnimationControllerCompat;
                    windowInsetsAnimationControlListenerCompat.onReady(windowInsetsAnimationControllerCompat, i11);
                }
            });
        }

        @Override
        public int getSystemBarsBehavior() {
            int systemBarsBehavior;
            systemBarsBehavior = this.mInsetsController.getSystemBarsBehavior();
            return systemBarsBehavior;
        }

        @Override
        public void hide(int i10) {
            this.mInsetsController.hide(i10);
        }

        @Override
        public boolean isAppearanceLightNavigationBars() {
            int systemBarsAppearance;
            systemBarsAppearance = this.mInsetsController.getSystemBarsAppearance();
            return (systemBarsAppearance & 16) != 0;
        }

        @Override
        public boolean isAppearanceLightStatusBars() {
            int systemBarsAppearance;
            systemBarsAppearance = this.mInsetsController.getSystemBarsAppearance();
            return (systemBarsAppearance & 8) != 0;
        }

        @Override
        public void removeOnControllableInsetsChangedListener(OnControllableInsetsChangedListener onControllableInsetsChangedListener) {
            WindowInsetsController.OnControllableInsetsChangedListener a10 = H0.a(this.mListeners.remove(onControllableInsetsChangedListener));
            if (a10 != null) {
                this.mInsetsController.removeOnControllableInsetsChangedListener(a10);
            }
        }

        @Override
        public void setAppearanceLightNavigationBars(boolean z10) {
            if (z10) {
                if (this.mWindow != null) {
                    setSystemUiFlag(16);
                }
                this.mInsetsController.setSystemBarsAppearance(16, 16);
            } else {
                if (this.mWindow != null) {
                    unsetSystemUiFlag(16);
                }
                this.mInsetsController.setSystemBarsAppearance(0, 16);
            }
        }

        @Override
        public void setAppearanceLightStatusBars(boolean z10) {
            if (z10) {
                if (this.mWindow != null) {
                    setSystemUiFlag(8192);
                }
                this.mInsetsController.setSystemBarsAppearance(8, 8);
            } else {
                if (this.mWindow != null) {
                    unsetSystemUiFlag(8192);
                }
                this.mInsetsController.setSystemBarsAppearance(0, 8);
            }
        }

        @Override
        public void setSystemBarsBehavior(int i10) {
            this.mInsetsController.setSystemBarsBehavior(i10);
        }

        public void setSystemUiFlag(int i10) {
            View decorView = this.mWindow.getDecorView();
            decorView.setSystemUiVisibility(i10 | decorView.getSystemUiVisibility());
        }

        @Override
        public void show(int i10) {
            Window window = this.mWindow;
            if (window != null && (i10 & 8) != 0 && Build.VERSION.SDK_INT < 32) {
                ((InputMethodManager) window.getContext().getSystemService(Context.INPUT_METHOD_SERVICE)).isActive();
            }
            this.mInsetsController.show(i10);
        }

        public void unsetSystemUiFlag(int i10) {
            View decorView = this.mWindow.getDecorView();
            decorView.setSystemUiVisibility((~i10) & decorView.getSystemUiVisibility());
        }

        public Impl30(WindowInsetsController windowInsetsController, WindowInsetsControllerCompat windowInsetsControllerCompat) {
            this.mListeners = new SimpleArrayMap<>();
            this.mInsetsController = windowInsetsController;
            this.mCompatController = windowInsetsControllerCompat;
        }
    }

    public WindowInsetsControllerCompat(Window window, View view) {
        if (Build.VERSION.SDK_INT >= 30) {
            this.mImpl = new Impl30(window, this);
        } else {
            this.mImpl = new Impl26(window, view);
        }
    }
}
