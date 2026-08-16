.class public Lcom/android/tools/r8/graph/H3$j;
.super Lcom/android/tools/r8/graph/H3$e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tools/r8/graph/H3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "j"
.end annotation


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/android/tools/r8/graph/H3$k;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/tools/r8/graph/H3$e;-><init>(Lcom/android/tools/r8/graph/H3$k;)V

    sget-boolean p2, Lcom/android/tools/r8/graph/H3$j;->c:Z

    if-nez p2, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/tools/r8/graph/H3$j;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/graph/H3$k;)Lcom/android/tools/r8/graph/H3$e;
    .locals 2

    sget-boolean v0, Lcom/android/tools/r8/graph/H3$j;->c:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/tools/r8/graph/H3$k;->b:Lcom/android/tools/r8/graph/H3$k;

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    :cond_1
    :goto_0
    new-instance v0, Lcom/android/tools/r8/graph/H3$j;

    iget-object v1, p0, Lcom/android/tools/r8/graph/H3$j;->b:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Lcom/android/tools/r8/graph/H3$j;-><init>(Ljava/lang/String;Lcom/android/tools/r8/graph/H3$k;)V

    return-object v0
.end method

.method public final f()Lcom/android/tools/r8/graph/H3$a;
    .locals 2

    new-instance v0, Lcom/android/tools/r8/graph/H3$a;

    sget-object v1, Lcom/android/tools/r8/graph/H3$k;->b:Lcom/android/tools/r8/graph/H3$k;

    invoke-direct {v0, p0, v1}, Lcom/android/tools/r8/graph/H3$a;-><init>(Lcom/android/tools/r8/graph/H3$i;Lcom/android/tools/r8/graph/H3$k;)V

    return-object v0
.end method

.method public final i()Lcom/android/tools/r8/graph/H3$j;
    .locals 0

    return-object p0
.end method

.method public final o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
