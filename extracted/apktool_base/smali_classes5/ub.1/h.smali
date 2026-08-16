.class public final synthetic Lub/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lub/i;


# direct methods
.method public synthetic constructor <init>(Lub/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lub/h;->b:Lub/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lub/h;->b:Lub/i;

    invoke-virtual {v0}, Lub/p;->Q()V

    return-void
.end method
