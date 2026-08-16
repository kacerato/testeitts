.class public La4/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La4/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La4/c;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-object v0, LW7/b;->h:Lb8/f;

    invoke-static {}, LN7/c;->o()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, La4/c$b$a;

    invoke-direct {v2, p0}, La4/c$b$a;-><init>(La4/c$b;)V

    invoke-virtual {v0, v1, v2}, Lb8/f;->f(Landroid/app/Activity;Lb8/g;)V

    return-void
.end method
