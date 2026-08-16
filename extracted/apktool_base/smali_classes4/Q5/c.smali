.class public LQ5/c;
.super Ls7/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls7/c<",
        "LO5/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Ljava/lang/String; = "RecoveryEmailSent"


# instance fields
.field public e:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "RecoveryEmailSent"

    invoke-direct {p0, v0}, Ls7/c;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public m()Ljava/lang/String;
    .locals 1

    const-string v0, "Password recovery"

    return-object v0
.end method

.method public p()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Ls7/c;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f0c018b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public q()V
    .locals 0

    invoke-super {p0}, Ls7/c;->q()V

    return-void
.end method

.method public y()V
    .locals 0

    invoke-super {p0}, Ls7/c;->y()V

    return-void
.end method
