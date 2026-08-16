.class public final synthetic Lnc/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lnc/h;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lnc/h;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnc/g;->b:Lnc/h;

    iput p2, p0, Lnc/g;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lnc/g;->b:Lnc/h;

    iget v1, p0, Lnc/g;->c:I

    invoke-static {v0, v1}, Lnc/h;->j(Lnc/h;I)V

    return-void
.end method
