.class public final synthetic Ltn/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ltn/x;

    invoke-static {p1}, Ltn/r;->e(Ltn/x;)Ljava/util/stream/Stream;

    move-result-object p1

    return-object p1
.end method
