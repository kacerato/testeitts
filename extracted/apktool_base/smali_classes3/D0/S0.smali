.class public final LD0/S0;
.super LD0/h0;
.source "SourceFile"


# instance fields
.field public final synthetic a:Landroid/app/Dialog;

.field public final synthetic b:LD0/T0;


# direct methods
.method public constructor <init>(LD0/T0;Landroid/app/Dialog;)V
    .locals 0

    iput-object p1, p0, LD0/S0;->b:LD0/T0;

    iput-object p2, p0, LD0/S0;->a:Landroid/app/Dialog;

    invoke-direct {p0}, LD0/h0;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, LD0/S0;->b:LD0/T0;

    iget-object v0, v0, LD0/T0;->c:LD0/U0;

    invoke-static {v0}, LD0/U0;->s(LD0/U0;)V

    iget-object v0, p0, LD0/S0;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LD0/S0;->a:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method
