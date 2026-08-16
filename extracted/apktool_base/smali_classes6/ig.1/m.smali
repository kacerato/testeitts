.class public final Lig/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBf/e;


# annotations
.annotation build Lnf/f0;
.end annotation


# instance fields
.field public final b:LBf/e;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final c:Ljava/lang/StackTraceElement;
    .annotation build LLf/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBf/e;Ljava/lang/StackTraceElement;)V
    .locals 0
    .param p1    # LBf/e;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/StackTraceElement;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lig/m;->b:LBf/e;

    iput-object p2, p0, Lig/m;->c:Ljava/lang/StackTraceElement;

    return-void
.end method


# virtual methods
.method public getCallerFrame()LBf/e;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lig/m;->b:LBf/e;

    return-object v0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lig/m;->c:Ljava/lang/StackTraceElement;

    return-object v0
.end method
