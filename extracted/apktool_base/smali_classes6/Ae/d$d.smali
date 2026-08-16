.class public LAe/d$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LAe/d$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAe/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(LAe/d$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, LAe/d$d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LUm/v;)Ljava/lang/String;
    .locals 0
    .param p1    # LUm/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p1}, LUm/v;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
