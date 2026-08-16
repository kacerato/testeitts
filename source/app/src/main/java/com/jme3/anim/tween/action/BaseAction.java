package com.jme3.anim.tween.action;

import com.jme3.anim.AnimationMask;
import com.jme3.anim.tween.ContainsTweens;
import com.jme3.anim.tween.Tween;
import com.jme3.util.SafeArrayList;
import java.util.List;

public class BaseAction extends Action {
    private boolean maskPropagationEnabled;
    private final Tween tween;

    public BaseAction(Tween tween) {
        super(new Tween[0]);
        this.maskPropagationEnabled = true;
        this.tween = tween;
        setLength(tween.getLength());
        SafeArrayList safeArrayList = new SafeArrayList(Action.class);
        gatherActions(tween, safeArrayList);
        Action[] actionArr = new Action[safeArrayList.size()];
        this.actions = actionArr;
        safeArrayList.toArray(actionArr);
    }

    private void gatherActions(Tween tween, List<Action> list) {
        if (tween instanceof Action) {
            list.add((Action) tween);
            return;
        }
        if (tween instanceof ContainsTweens) {
            for (Tween tween2 : ((ContainsTweens) tween).getTweens()) {
                gatherActions(tween2, list);
            }
        }
    }

    @Override
    public boolean interpolate(double d10) {
        return this.tween.interpolate(d10);
    }

    public boolean isMaskPropagationEnabled() {
        return this.maskPropagationEnabled;
    }

    @Override
    public void setMask(AnimationMask animationMask) {
        super.setMask(animationMask);
        if (this.maskPropagationEnabled) {
            for (Action action : this.actions) {
                action.setMask(animationMask);
            }
        }
    }

    public void setMaskPropagationEnabled(boolean z10) {
        this.maskPropagationEnabled = z10;
    }
}
