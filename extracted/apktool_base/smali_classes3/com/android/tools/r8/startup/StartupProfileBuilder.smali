.class public interface abstract Lcom/android/tools/r8/startup/StartupProfileBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract addHumanReadableArtProfile(Lcom/android/tools/r8/TextInputStream;Ljava/util/function/Consumer;)Lcom/android/tools/r8/startup/StartupProfileBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/tools/r8/TextInputStream;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/tools/r8/profile/art/HumanReadableArtProfileParserBuilder;",
            ">;)",
            "Lcom/android/tools/r8/startup/StartupProfileBuilder;"
        }
    .end annotation
.end method

.method public abstract addStartupClass(Ljava/util/function/Consumer;)Lcom/android/tools/r8/startup/StartupProfileBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/tools/r8/startup/StartupClassBuilder;",
            ">;)",
            "Lcom/android/tools/r8/startup/StartupProfileBuilder;"
        }
    .end annotation
.end method

.method public abstract addStartupMethod(Ljava/util/function/Consumer;)Lcom/android/tools/r8/startup/StartupProfileBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/tools/r8/startup/StartupMethodBuilder;",
            ">;)",
            "Lcom/android/tools/r8/startup/StartupProfileBuilder;"
        }
    .end annotation
.end method
