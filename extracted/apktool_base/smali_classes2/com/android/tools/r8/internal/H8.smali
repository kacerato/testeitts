.class public abstract Lcom/android/tools/r8/internal/H8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/internal/vM;
.implements Ljava/io/Serializable;


# instance fields
.field public transient b:Lcom/android/tools/r8/internal/vM;

.field public final c:Ljava/lang/Class;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/H8;->c:Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/tools/r8/internal/H8;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/tools/r8/internal/H8;->e:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/tools/r8/internal/H8;->f:Z

    return-void
.end method


# virtual methods
.method public abstract a()Lcom/android/tools/r8/internal/vM;
.end method

.method public final b()Lcom/android/tools/r8/internal/Dc;
    .locals 2

    iget-object v0, p0, Lcom/android/tools/r8/internal/H8;->c:Ljava/lang/Class;

    iget-boolean v1, p0, Lcom/android/tools/r8/internal/H8;->f:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/tools/r8/internal/te0;->a:Lcom/android/tools/r8/internal/ue0;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lcom/android/tools/r8/internal/m50;

    invoke-direct {v1, v0}, Lcom/android/tools/r8/internal/m50;-><init>(Ljava/lang/Class;)V

    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/android/tools/r8/internal/te0;->a(Ljava/lang/Class;)Lcom/android/tools/r8/internal/Wd;

    move-result-object v0

    return-object v0
.end method
