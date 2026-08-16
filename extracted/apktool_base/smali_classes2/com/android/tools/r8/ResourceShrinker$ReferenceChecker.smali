.class public interface abstract Lcom/android/tools/r8/ResourceShrinker$ReferenceChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/ResourceShrinker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ReferenceChecker"
.end annotation


# virtual methods
.method public endClassVisit(Lcom/android/tools/r8/references/ClassReference;)V
    .locals 0

    return-void
.end method

.method public endMethodVisit(Lcom/android/tools/r8/references/MethodReference;)V
    .locals 0

    return-void
.end method

.method public abstract referencedInt(I)V
.end method

.method public abstract referencedMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract referencedStaticField(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract referencedString(Ljava/lang/String;)V
.end method

.method public abstract shouldProcess(Ljava/lang/String;)Z
.end method

.method public startClassVisit(Lcom/android/tools/r8/references/ClassReference;)V
    .locals 0

    return-void
.end method

.method public startMethodVisit(Lcom/android/tools/r8/references/MethodReference;)V
    .locals 0

    return-void
.end method
