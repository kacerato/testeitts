package JAVARuntime;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:AnimationTrigger.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:AnimationTrigger.class
  classes.dex
 */
@ClassCategory(cat = {"Animations", "Components"})
public class AnimationTrigger extends Component {

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:AnimationTrigger$AnimSpeedFrom.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:AnimationTrigger$AnimSpeedFrom.class
  classes.dex
 */
    public enum AnimSpeedFrom {
        Constant,
        MovementSpeed,
        ForwardSpeed,
        SideSpeed;

        public static AnimSpeedFrom[] valuesCustom() {
            AnimSpeedFrom[] valuesCustom = values();
            int length = valuesCustom.length;
            AnimSpeedFrom[] animSpeedFromArr = new AnimSpeedFrom[length];
            java.lang.System.arraycopy(valuesCustom, 0, animSpeedFromArr, 0, length);
            return animSpeedFromArr;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:AnimationTrigger$ConditionType.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:AnimationTrigger$ConditionType.class
  classes.dex
 */
    public enum ConditionType {
        Equals,
        BiggerThan,
        LessThan,
        BiggerOrEqual,
        LesserOrEqual,
        IsOn,
        IsOff;

        public static ConditionType[] valuesCustom() {
            ConditionType[] valuesCustom = values();
            int length = valuesCustom.length;
            ConditionType[] conditionTypeArr = new ConditionType[length];
            java.lang.System.arraycopy(valuesCustom, 0, conditionTypeArr, 0, length);
            return conditionTypeArr;
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:AnimationTrigger$TriggerType.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:AnimationTrigger$TriggerType.class
  classes.dex
 */
    public enum TriggerType {
        MovementSpeed,
        MovementLength,
        ForwardSpeed,
        ForwardLength,
        SideSpeed,
        SideLength,
        IsGrounded,
        OnEvent,
        GlobalPositionX,
        GlobalPositionY,
        GlobalPositionZ;

        public static TriggerType[] valuesCustom() {
            TriggerType[] valuesCustom = values();
            int length = valuesCustom.length;
            TriggerType[] triggerTypeArr = new TriggerType[length];
            java.lang.System.arraycopy(valuesCustom, 0, triggerTypeArr, 0, length);
            return triggerTypeArr;
        }
    }

    @HideGetSet
    public String getAnimName() {
        return null;
    }

    @HideGetSet
    public float getAnimSpeed() {
        return 0.0f;
    }

    @HideGetSet
    public AnimSpeedFrom getAnimSpeedFrom() {
        return null;
    }

    @HideGetSet
    public String getOnActiveEventName() {
        return null;
    }

    @HideGetSet
    public float getTransitionDelay() {
        return 0.0f;
    }

    @HideGetSet
    public boolean isLoopOnce() {
        return false;
    }

    @HideGetSet
    public boolean isRunning() {
        return false;
    }

    @HideGetSet
    public void setAnimName(String str) {
    }

    @HideGetSet
    public void setAnimSpeed(float f10) {
    }

    @HideGetSet
    public void setAnimSpeedFrom(AnimSpeedFrom animSpeedFrom) {
    }

    @HideGetSet
    public void setLoopOnce(boolean z10) {
    }

    @HideGetSet
    public void setOnActiveEventName(String str) {
    }

    @HideGetSet
    public void setTransitionDelay(float f10) {
    }

    public int enterConditionCount() {
        return 0;
    }

    public Condition enterConditionAt(int i10) {
        return null;
    }

    public void addEnterCondition(Condition condition) {
    }

    public void removeEnterCondition(Condition condition) {
    }

    public int exitConditionCount() {
        return 0;
    }

    public Condition exitConditionAt(int i10) {
        return null;
    }

    public void addExitCondition(Condition condition) {
    }

    public void removeExitCondition(Condition condition) {
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:AnimationTrigger$Condition.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:AnimationTrigger$Condition.class
  classes.dex
 */
    public static class Condition {
        @HideGetSet
        public float getCompareFloat() {
            return 0.0f;
        }

        @HideGetSet
        public float getDelay() {
            return 0.0f;
        }

        @HideGetSet
        public String getEmitEventName() {
            return null;
        }

        @HideGetSet
        public String getEventName() {
            return null;
        }

        @HideGetSet
        public TriggerType getTrigger() {
            return null;
        }

        @HideGetSet
        public ConditionType getType() {
            return null;
        }

        @HideGetSet
        public boolean isAbsValue() {
            return false;
        }

        @HideGetSet
        public boolean isEmitEvent() {
            return false;
        }

        @HideGetSet
        public boolean isExclusive() {
            return false;
        }

        @HideGetSet
        public boolean isImmediateStop() {
            return false;
        }

        @HideGetSet
        public void setAbsValue(boolean z10) {
        }

        @HideGetSet
        public void setCompareFloat(float f10) {
        }

        @HideGetSet
        public void setDelay(float f10) {
        }

        @HideGetSet
        public void setEmitEvent(boolean z10) {
        }

        @HideGetSet
        public void setEmitEventName(String str) {
        }

        @HideGetSet
        public void setEventName(String str) {
        }

        @HideGetSet
        public void setExclusive(boolean z10) {
        }

        @HideGetSet
        public void setImmediateStop(boolean z10) {
        }

        @HideGetSet
        public void setTrigger(TriggerType triggerType) {
        }

        @HideGetSet
        public void setType(ConditionType conditionType) {
        }
    }
}
