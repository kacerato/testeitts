.class public final synthetic Lp2/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic a:Lp2/t;


# direct methods
.method public synthetic constructor <init>(Lp2/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp2/l;->a:Lp2/t;

    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 1

    iget-object v0, p0, Lp2/l;->a:Lp2/t;

    invoke-static {v0}, Lp2/t;->h(Lp2/t;)V

    return-void
.end method
