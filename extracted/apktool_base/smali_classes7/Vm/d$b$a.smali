.class public LVm/d$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LVm/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LVm/d$b;->k()LVm/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LVm/d$b;


# direct methods
.method public constructor <init>(LVm/d$b;)V
    .locals 0

    iput-object p1, p0, LVm/d$b$a;->a:LVm/d$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LVm/b;)LVm/a;
    .locals 1

    new-instance v0, LPm/n;

    invoke-direct {v0, p1}, LPm/n;-><init>(LVm/b;)V

    return-object v0
.end method
