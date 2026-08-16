.class public final Lcom/android/tools/r8/internal/f70;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/ClassFileResourceProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tools/r8/internal/f70$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/f70;->a:Ljava/util/HashMap;

    return-void
.end method

.method public static a(Ljava/lang/String;[B)Lcom/android/tools/r8/ClassFileResourceProvider;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/tools/r8/internal/f70;->a()Lcom/android/tools/r8/internal/f70$a;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p0, p1}, Lcom/android/tools/r8/internal/f70$a;->a(Ljava/lang/String;[B)Lcom/android/tools/r8/internal/f70$a;

    .line 3
    invoke-virtual {v0}, Lcom/android/tools/r8/internal/f70$a;->a()Lcom/android/tools/r8/internal/f70;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lcom/android/tools/r8/internal/f70$a;
    .locals 1

    .line 4
    new-instance v0, Lcom/android/tools/r8/internal/f70$a;

    invoke-direct {v0}, Lcom/android/tools/r8/internal/f70$a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final getClassDescriptors()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/f70;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/android/tools/r8/internal/Ll0;->a(Ljava/util/Collection;)Ljava/util/HashSet;

    move-result-object v0

    return-object v0
.end method

.method public final getProgramResource(Ljava/lang/String;)Lcom/android/tools/r8/ProgramResource;
    .locals 3

    iget-object v0, p0, Lcom/android/tools/r8/internal/f70;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v1, Lcom/android/tools/r8/internal/g70;

    invoke-direct {v1, p1}, Lcom/android/tools/r8/internal/g70;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/android/tools/r8/ProgramResource$Kind;->CF:Lcom/android/tools/r8/ProgramResource$Kind;

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    invoke-static {v1, v2, v0, p1}, Lcom/android/tools/r8/ProgramResource;->fromBytes(Lcom/android/tools/r8/origin/Origin;Lcom/android/tools/r8/ProgramResource$Kind;[BLjava/util/Set;)Lcom/android/tools/r8/ProgramResource;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/f70;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " preloaded resources"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
