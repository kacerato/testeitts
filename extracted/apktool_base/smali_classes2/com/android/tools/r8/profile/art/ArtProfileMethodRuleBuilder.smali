.class public interface abstract Lcom/android/tools/r8/profile/art/ArtProfileMethodRuleBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract setMethodReference(Lcom/android/tools/r8/references/MethodReference;)Lcom/android/tools/r8/profile/art/ArtProfileMethodRuleBuilder;
.end method

.method public abstract setMethodRuleInfo(Ljava/util/function/Consumer;)Lcom/android/tools/r8/profile/art/ArtProfileMethodRuleBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/tools/r8/profile/art/ArtProfileMethodRuleInfoBuilder;",
            ">;)",
            "Lcom/android/tools/r8/profile/art/ArtProfileMethodRuleBuilder;"
        }
    .end annotation
.end method
