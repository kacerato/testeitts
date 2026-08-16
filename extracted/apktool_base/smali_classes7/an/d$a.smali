.class public Lan/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lan/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lan/d;-><init>(Lan/d$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lan/d;


# direct methods
.method public constructor <init>(Lan/d;)V
    .locals 0

    iput-object p1, p0, Lan/d$a;->a:Lan/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lan/b;)LYm/a;
    .locals 1

    new-instance v0, Lan/a;

    invoke-direct {v0, p1}, Lan/a;-><init>(Lan/b;)V

    return-object v0
.end method
