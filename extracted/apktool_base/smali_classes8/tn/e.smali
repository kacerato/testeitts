.class public final synthetic Ltn/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ljn/v;


# direct methods
.method public synthetic constructor <init>(Ljn/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltn/e;->b:Ljn/v;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ltn/e;->b:Ljn/v;

    check-cast p1, Ltn/u;

    invoke-static {v0, p1}, Ltn/r;->g(Ljn/v;Ltn/u;)V

    return-void
.end method
