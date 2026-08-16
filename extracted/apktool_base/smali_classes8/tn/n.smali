.class public final synthetic Ltn/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Ltn/x;


# direct methods
.method public synthetic constructor <init>(Ltn/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltn/n;->b:Ltn/x;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Ltn/n;->b:Ltn/x;

    check-cast p1, Ltn/u;

    invoke-interface {v0, p1}, Ltn/x;->a(Ltn/u;)V

    return-void
.end method
