package androidx.core.view;

import android.view.WindowInsetsAnimationController;
import androidx.core.graphics.Insets;

public final class WindowInsetsAnimationControllerCompat {
    private final Impl mImpl;

    public static class Impl {
        public void finish(boolean z10) {
        }

        public float getCurrentAlpha() {
            return 0.0f;
        }

        public float getCurrentFraction() {
            return 0.0f;
        }

        public Insets getCurrentInsets() {
            return Insets.NONE;
        }

        public Insets getHiddenStateInsets() {
            return Insets.NONE;
        }

        public Insets getShownStateInsets() {
            return Insets.NONE;
        }

        public int getTypes() {
            return 0;
        }

        public boolean isCancelled() {
            return true;
        }

        public boolean isFinished() {
            return false;
        }

        public void setInsetsAndAlpha(Insets insets, float f10, float f11) {
        }
    }

    public static class Impl30 extends Impl {
        private final WindowInsetsAnimationController mController;

        public Impl30(WindowInsetsAnimationController windowInsetsAnimationController) {
            this.mController = windowInsetsAnimationController;
        }

        @Override
        public void finish(boolean z10) {
            this.mController.finish(z10);
        }

        @Override
        public float getCurrentAlpha() {
            float currentAlpha;
            currentAlpha = this.mController.getCurrentAlpha();
            return currentAlpha;
        }

        @Override
        public float getCurrentFraction() {
            float currentFraction;
            currentFraction = this.mController.getCurrentFraction();
            return currentFraction;
        }

        @Override
        public Insets getCurrentInsets() {
            android.graphics.Insets currentInsets;
            currentInsets = this.mController.getCurrentInsets();
            return Insets.toCompatInsets(currentInsets);
        }

        @Override
        public Insets getHiddenStateInsets() {
            android.graphics.Insets hiddenStateInsets;
            hiddenStateInsets = this.mController.getHiddenStateInsets();
            return Insets.toCompatInsets(hiddenStateInsets);
        }

        @Override
        public Insets getShownStateInsets() {
            android.graphics.Insets shownStateInsets;
            shownStateInsets = this.mController.getShownStateInsets();
            return Insets.toCompatInsets(shownStateInsets);
        }

        @Override
        public int getTypes() {
            int types;
            types = this.mController.getTypes();
            return types;
        }

        @Override
        public boolean isCancelled() {
            boolean isCancelled;
            isCancelled = this.mController.isCancelled();
            return isCancelled;
        }

        @Override
        public boolean isFinished() {
            boolean isFinished;
            isFinished = this.mController.isFinished();
            return isFinished;
        }

        @Override
        public void setInsetsAndAlpha(Insets insets, float f10, float f11) {
            this.mController.setInsetsAndAlpha(insets == null ? null : insets.toPlatformInsets(), f10, f11);
        }
    }

    public WindowInsetsAnimationControllerCompat(WindowInsetsAnimationController windowInsetsAnimationController) {
        this.mImpl = new Impl30(windowInsetsAnimationController);
    }

    public void finish(boolean z10) {
        this.mImpl.finish(z10);
    }

    public float getCurrentAlpha() {
        return this.mImpl.getCurrentAlpha();
    }

    public float getCurrentFraction() {
        return this.mImpl.getCurrentFraction();
    }

    public Insets getCurrentInsets() {
        return this.mImpl.getCurrentInsets();
    }

    public Insets getHiddenStateInsets() {
        return this.mImpl.getHiddenStateInsets();
    }

    public Insets getShownStateInsets() {
        return this.mImpl.getShownStateInsets();
    }

    public int getTypes() {
        return this.mImpl.getTypes();
    }

    public boolean isCancelled() {
        return this.mImpl.isCancelled();
    }

    public boolean isFinished() {
        return this.mImpl.isFinished();
    }

    public boolean isReady() {
        return (isFinished() || isCancelled()) ? false : true;
    }

    public void setInsetsAndAlpha(Insets insets, float f10, float f11) {
        this.mImpl.setInsetsAndAlpha(insets, f10, f11);
    }
}
