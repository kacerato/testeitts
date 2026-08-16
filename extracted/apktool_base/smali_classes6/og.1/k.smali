.class public abstract Log/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Lnf/f0;
.end annotation


# instance fields
.field public b:J
    .annotation build LLf/g;
    .end annotation
.end field

.field public c:Log/l;
    .annotation build LLf/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 4
    sget-object v2, Log/o;->i:Log/l;

    invoke-direct {p0, v0, v1, v2}, Log/k;-><init>(JLog/l;)V

    return-void
.end method

.method public constructor <init>(JLog/l;)V
    .locals 0
    .param p3    # Log/l;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Log/k;->b:J

    .line 3
    iput-object p3, p0, Log/k;->c:Log/l;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Log/k;->c:Log/l;

    invoke-interface {v0}, Log/l;->r()I

    move-result v0

    return v0
.end method
