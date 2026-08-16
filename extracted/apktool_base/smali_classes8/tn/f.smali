.class public final synthetic Ltn/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ltn/r;


# direct methods
.method public synthetic constructor <init>(Ltn/r;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltn/f;->b:Ltn/r;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ltn/f;->b:Ltn/r;

    check-cast p1, Lvn/f;

    invoke-static {v0, p1}, Ltn/r;->o(Ltn/r;Lvn/f;)V

    return-void
.end method
