package androidx.transition;

import android.animation.TimeInterpolator;
import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.res.TypedArrayUtils;
import androidx.transition.Transition;
import com.bumptech.glide.load.engine.GlideException;
import java.util.ArrayList;
import java.util.Iterator;

public class TransitionSet extends Transition {
    private static final int FLAG_CHANGE_EPICENTER = 8;
    private static final int FLAG_CHANGE_INTERPOLATOR = 1;
    private static final int FLAG_CHANGE_PATH_MOTION = 4;
    private static final int FLAG_CHANGE_PROPAGATION = 2;
    public static final int ORDERING_SEQUENTIAL = 1;
    public static final int ORDERING_TOGETHER = 0;
    private int mChangeFlags;
    int mCurrentListeners;
    private boolean mPlayTogether;
    boolean mStarted;
    private ArrayList<Transition> mTransitions;

    public static class TransitionSetListener extends TransitionListenerAdapter {
        TransitionSet mTransitionSet;

        public TransitionSetListener(TransitionSet transitionSet) {
            this.mTransitionSet = transitionSet;
        }

        @Override
        public void onTransitionEnd(Transition transition) {
            TransitionSet transitionSet = this.mTransitionSet;
            int i10 = transitionSet.mCurrentListeners - 1;
            transitionSet.mCurrentListeners = i10;
            if (i10 == 0) {
                transitionSet.mStarted = false;
                transitionSet.end();
            }
            transition.removeListener(this);
        }

        @Override
        public void onTransitionStart(Transition transition) {
            TransitionSet transitionSet = this.mTransitionSet;
            if (transitionSet.mStarted) {
                return;
            }
            transitionSet.start();
            this.mTransitionSet.mStarted = true;
        }
    }

    public TransitionSet() {
        this.mTransitions = new ArrayList<>();
        this.mPlayTogether = true;
        this.mStarted = false;
        this.mChangeFlags = 0;
    }

    private void addTransitionInternal(Transition transition) {
        this.mTransitions.add(transition);
        transition.mParent = this;
    }

    private void setupStartEndListeners() {
        TransitionSetListener transitionSetListener = new TransitionSetListener(this);
        Iterator<Transition> it = this.mTransitions.iterator();
        while (it.hasNext()) {
            it.next().addListener(transitionSetListener);
        }
        this.mCurrentListeners = this.mTransitions.size();
    }

    public TransitionSet addTransition(Transition transition) {
        addTransitionInternal(transition);
        long j10 = this.mDuration;
        if (j10 >= 0) {
            transition.setDuration(j10);
        }
        if ((this.mChangeFlags & 1) != 0) {
            transition.setInterpolator(getInterpolator());
        }
        if ((this.mChangeFlags & 2) != 0) {
            transition.setPropagation(getPropagation());
        }
        if ((this.mChangeFlags & 4) != 0) {
            transition.setPathMotion(getPathMotion());
        }
        if ((this.mChangeFlags & 8) != 0) {
            transition.setEpicenterCallback(getEpicenterCallback());
        }
        return this;
    }

    @Override
    public void cancel() {
        super.cancel();
        int size = this.mTransitions.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.mTransitions.get(i10).cancel();
        }
    }

    @Override
    public void captureEndValues(TransitionValues transitionValues) {
        if (isValidTarget(transitionValues.view)) {
            Iterator<Transition> it = this.mTransitions.iterator();
            while (it.hasNext()) {
                Transition next = it.next();
                if (next.isValidTarget(transitionValues.view)) {
                    next.captureEndValues(transitionValues);
                    transitionValues.mTargetedTransitions.add(next);
                }
            }
        }
    }

    @Override
    public void capturePropagationValues(TransitionValues transitionValues) {
        super.capturePropagationValues(transitionValues);
        int size = this.mTransitions.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.mTransitions.get(i10).capturePropagationValues(transitionValues);
        }
    }

    @Override
    public void captureStartValues(TransitionValues transitionValues) {
        if (isValidTarget(transitionValues.view)) {
            Iterator<Transition> it = this.mTransitions.iterator();
            while (it.hasNext()) {
                Transition next = it.next();
                if (next.isValidTarget(transitionValues.view)) {
                    next.captureStartValues(transitionValues);
                    transitionValues.mTargetedTransitions.add(next);
                }
            }
        }
    }

    @Override
    public void createAnimators(ViewGroup viewGroup, TransitionValuesMaps transitionValuesMaps, TransitionValuesMaps transitionValuesMaps2, ArrayList<TransitionValues> arrayList, ArrayList<TransitionValues> arrayList2) {
        long startDelay = getStartDelay();
        int size = this.mTransitions.size();
        for (int i10 = 0; i10 < size; i10++) {
            Transition transition = this.mTransitions.get(i10);
            if (startDelay > 0 && (this.mPlayTogether || i10 == 0)) {
                long startDelay2 = transition.getStartDelay();
                if (startDelay2 > 0) {
                    transition.setStartDelay(startDelay2 + startDelay);
                } else {
                    transition.setStartDelay(startDelay);
                }
            }
            transition.createAnimators(viewGroup, transitionValuesMaps, transitionValuesMaps2, arrayList, arrayList2);
        }
    }

    @Override
    public Transition excludeTarget(View view, boolean z10) {
        for (int i10 = 0; i10 < this.mTransitions.size(); i10++) {
            this.mTransitions.get(i10).excludeTarget(view, z10);
        }
        return super.excludeTarget(view, z10);
    }

    @Override
    public void forceToEnd(ViewGroup viewGroup) {
        super.forceToEnd(viewGroup);
        int size = this.mTransitions.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.mTransitions.get(i10).forceToEnd(viewGroup);
        }
    }

    public int getOrdering() {
        return !this.mPlayTogether ? 1 : 0;
    }

    public Transition getTransitionAt(int i10) {
        if (i10 < 0 || i10 >= this.mTransitions.size()) {
            return null;
        }
        return this.mTransitions.get(i10);
    }

    public int getTransitionCount() {
        return this.mTransitions.size();
    }

    @Override
    public void pause(View view) {
        super.pause(view);
        int size = this.mTransitions.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.mTransitions.get(i10).pause(view);
        }
    }

    public TransitionSet removeTransition(Transition transition) {
        this.mTransitions.remove(transition);
        transition.mParent = null;
        return this;
    }

    @Override
    public void resume(View view) {
        super.resume(view);
        int size = this.mTransitions.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.mTransitions.get(i10).resume(view);
        }
    }

    @Override
    public void runAnimators() {
        if (this.mTransitions.isEmpty()) {
            start();
            end();
            return;
        }
        setupStartEndListeners();
        if (this.mPlayTogether) {
            Iterator<Transition> it = this.mTransitions.iterator();
            while (it.hasNext()) {
                it.next().runAnimators();
            }
            return;
        }
        for (int i10 = 1; i10 < this.mTransitions.size(); i10++) {
            Transition transition = this.mTransitions.get(i10 - 1);
            final Transition transition2 = this.mTransitions.get(i10);
            transition.addListener(new TransitionListenerAdapter() {
                @Override
                public void onTransitionEnd(Transition transition3) {
                    transition2.runAnimators();
                    transition3.removeListener(this);
                }
            });
        }
        Transition transition3 = this.mTransitions.get(0);
        if (transition3 != null) {
            transition3.runAnimators();
        }
    }

    @Override
    public void setCanRemoveViews(boolean z10) {
        super.setCanRemoveViews(z10);
        int size = this.mTransitions.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.mTransitions.get(i10).setCanRemoveViews(z10);
        }
    }

    @Override
    public void setEpicenterCallback(Transition.EpicenterCallback epicenterCallback) {
        super.setEpicenterCallback(epicenterCallback);
        this.mChangeFlags |= 8;
        int size = this.mTransitions.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.mTransitions.get(i10).setEpicenterCallback(epicenterCallback);
        }
    }

    public TransitionSet setOrdering(int i10) {
        if (i10 == 0) {
            this.mPlayTogether = true;
        } else {
            if (i10 != 1) {
                throw new AndroidRuntimeException("Invalid parameter for TransitionSet ordering: " + i10);
            }
            this.mPlayTogether = false;
        }
        return this;
    }

    @Override
    public void setPathMotion(PathMotion pathMotion) {
        super.setPathMotion(pathMotion);
        this.mChangeFlags |= 4;
        if (this.mTransitions != null) {
            for (int i10 = 0; i10 < this.mTransitions.size(); i10++) {
                this.mTransitions.get(i10).setPathMotion(pathMotion);
            }
        }
    }

    @Override
    public void setPropagation(TransitionPropagation transitionPropagation) {
        super.setPropagation(transitionPropagation);
        this.mChangeFlags |= 2;
        int size = this.mTransitions.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.mTransitions.get(i10).setPropagation(transitionPropagation);
        }
    }

    @Override
    public String toString(String str) {
        String transition = super.toString(str);
        for (int i10 = 0; i10 < this.mTransitions.size(); i10++) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(transition);
            sb2.append("\n");
            sb2.append(this.mTransitions.get(i10).toString(str + GlideException.a.f59088e));
            transition = sb2.toString();
        }
        return transition;
    }

    @Override
    public TransitionSet addListener(Transition.TransitionListener transitionListener) {
        return (TransitionSet) super.addListener(transitionListener);
    }

    @Override
    public Transition mo687clone() {
        TransitionSet transitionSet = (TransitionSet) super.mo687clone();
        transitionSet.mTransitions = new ArrayList<>();
        int size = this.mTransitions.size();
        for (int i10 = 0; i10 < size; i10++) {
            transitionSet.addTransitionInternal(this.mTransitions.get(i10).mo687clone());
        }
        return transitionSet;
    }

    @Override
    public TransitionSet removeListener(Transition.TransitionListener transitionListener) {
        return (TransitionSet) super.removeListener(transitionListener);
    }

    @Override
    public TransitionSet setDuration(long j10) {
        ArrayList<Transition> arrayList;
        super.setDuration(j10);
        if (this.mDuration >= 0 && (arrayList = this.mTransitions) != null) {
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.mTransitions.get(i10).setDuration(j10);
            }
        }
        return this;
    }

    @Override
    public TransitionSet setInterpolator(TimeInterpolator timeInterpolator) {
        this.mChangeFlags |= 1;
        ArrayList<Transition> arrayList = this.mTransitions;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.mTransitions.get(i10).setInterpolator(timeInterpolator);
            }
        }
        return (TransitionSet) super.setInterpolator(timeInterpolator);
    }

    @Override
    public TransitionSet setSceneRoot(ViewGroup viewGroup) {
        super.setSceneRoot(viewGroup);
        int size = this.mTransitions.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.mTransitions.get(i10).setSceneRoot(viewGroup);
        }
        return this;
    }

    @Override
    public TransitionSet setStartDelay(long j10) {
        return (TransitionSet) super.setStartDelay(j10);
    }

    @Override
    public Transition addTarget(Class cls) {
        return addTarget((Class<?>) cls);
    }

    @Override
    public Transition removeTarget(Class cls) {
        return removeTarget((Class<?>) cls);
    }

    @Override
    public Transition excludeTarget(String str, boolean z10) {
        for (int i10 = 0; i10 < this.mTransitions.size(); i10++) {
            this.mTransitions.get(i10).excludeTarget(str, z10);
        }
        return super.excludeTarget(str, z10);
    }

    @Override
    public TransitionSet addTarget(View view) {
        for (int i10 = 0; i10 < this.mTransitions.size(); i10++) {
            this.mTransitions.get(i10).addTarget(view);
        }
        return (TransitionSet) super.addTarget(view);
    }

    @Override
    public TransitionSet removeTarget(int i10) {
        for (int i11 = 0; i11 < this.mTransitions.size(); i11++) {
            this.mTransitions.get(i11).removeTarget(i10);
        }
        return (TransitionSet) super.removeTarget(i10);
    }

    public TransitionSet(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mTransitions = new ArrayList<>();
        this.mPlayTogether = true;
        this.mStarted = false;
        this.mChangeFlags = 0;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, Styleable.TRANSITION_SET);
        setOrdering(TypedArrayUtils.getNamedInt(obtainStyledAttributes, (XmlResourceParser) attributeSet, "transitionOrdering", 0, 0));
        obtainStyledAttributes.recycle();
    }

    @Override
    public Transition excludeTarget(int i10, boolean z10) {
        for (int i11 = 0; i11 < this.mTransitions.size(); i11++) {
            this.mTransitions.get(i11).excludeTarget(i10, z10);
        }
        return super.excludeTarget(i10, z10);
    }

    @Override
    public TransitionSet addTarget(int i10) {
        for (int i11 = 0; i11 < this.mTransitions.size(); i11++) {
            this.mTransitions.get(i11).addTarget(i10);
        }
        return (TransitionSet) super.addTarget(i10);
    }

    @Override
    public TransitionSet removeTarget(View view) {
        for (int i10 = 0; i10 < this.mTransitions.size(); i10++) {
            this.mTransitions.get(i10).removeTarget(view);
        }
        return (TransitionSet) super.removeTarget(view);
    }

    @Override
    public Transition excludeTarget(Class<?> cls, boolean z10) {
        for (int i10 = 0; i10 < this.mTransitions.size(); i10++) {
            this.mTransitions.get(i10).excludeTarget(cls, z10);
        }
        return super.excludeTarget(cls, z10);
    }

    @Override
    public TransitionSet addTarget(String str) {
        for (int i10 = 0; i10 < this.mTransitions.size(); i10++) {
            this.mTransitions.get(i10).addTarget(str);
        }
        return (TransitionSet) super.addTarget(str);
    }

    @Override
    public TransitionSet removeTarget(Class<?> cls) {
        for (int i10 = 0; i10 < this.mTransitions.size(); i10++) {
            this.mTransitions.get(i10).removeTarget(cls);
        }
        return (TransitionSet) super.removeTarget(cls);
    }

    @Override
    public TransitionSet addTarget(Class<?> cls) {
        for (int i10 = 0; i10 < this.mTransitions.size(); i10++) {
            this.mTransitions.get(i10).addTarget(cls);
        }
        return (TransitionSet) super.addTarget(cls);
    }

    @Override
    public TransitionSet removeTarget(String str) {
        for (int i10 = 0; i10 < this.mTransitions.size(); i10++) {
            this.mTransitions.get(i10).removeTarget(str);
        }
        return (TransitionSet) super.removeTarget(str);
    }
}
