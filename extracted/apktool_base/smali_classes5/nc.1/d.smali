.class public final synthetic Lnc/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lnc/h;


# direct methods
.method public synthetic constructor <init>(Lnc/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnc/d;->b:Lnc/h;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lnc/d;->b:Lnc/h;

    invoke-static {v0}, Lnc/h;->h(Lnc/h;)V

    return-void
.end method
