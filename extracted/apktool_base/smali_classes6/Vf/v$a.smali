.class public final LVf/v$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LVf/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LVf/v$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(III)LVf/v;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, LVf/v;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, LVf/v;-><init>(IIILkotlin/jvm/internal/x;)V

    return-object v0
.end method
