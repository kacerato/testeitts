.class public final Leg/h;
.super Leg/r0;
.source "SourceFile"


# instance fields
.field public final h:Ljava/lang/Thread;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 0
    .param p1    # Ljava/lang/Thread;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0}, Leg/r0;-><init>()V

    iput-object p1, p0, Leg/h;->h:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public k0()Ljava/lang/Thread;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Leg/h;->h:Ljava/lang/Thread;

    return-object v0
.end method
