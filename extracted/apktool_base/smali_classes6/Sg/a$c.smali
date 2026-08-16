.class public final LSg/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LSg/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation


# instance fields
.field public final synthetic b:LSg/a;


# direct methods
.method public constructor <init>(LSg/a;)V
    .locals 0

    iput-object p1, p0, LSg/a$c;->b:LSg/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LSg/a$c;->b:LSg/a;

    invoke-virtual {v0}, LSg/a;->cancel()V

    return-void
.end method
