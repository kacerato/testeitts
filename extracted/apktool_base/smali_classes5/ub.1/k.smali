.class public final synthetic Lub/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lub/l;


# direct methods
.method public synthetic constructor <init>(Lub/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lub/k;->b:Lub/l;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lub/k;->b:Lub/l;

    invoke-virtual {v0}, Lub/p;->Q()V

    return-void
.end method
