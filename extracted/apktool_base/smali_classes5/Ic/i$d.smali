.class public LIc/i$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv3/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LIc/i;->i(Ljava/io/File;Ljava/lang/String;LIc/i$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LIc/i$e;


# direct methods
.method public constructor <init>(LIc/i$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$resumeCallback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, LIc/i$d;->a:LIc/i$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "resultCode",
            "intent"
        }
    .end annotation

    iget-object p1, p0, LIc/i$d;->a:LIc/i$e;

    invoke-interface {p1}, LIc/i$e;->onResume()V

    return-void
.end method
