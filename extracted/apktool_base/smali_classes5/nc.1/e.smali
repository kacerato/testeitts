.class public final synthetic Lnc/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lnc/h;

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Lnc/h;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnc/e;->b:Lnc/h;

    iput p2, p0, Lnc/e;->c:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lnc/e;->b:Lnc/h;

    iget v1, p0, Lnc/e;->c:F

    invoke-static {v0, v1}, Lnc/h;->i(Lnc/h;F)V

    return-void
.end method
