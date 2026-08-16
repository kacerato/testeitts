.class public LZm/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZm/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LZm/g;-><init>(LZm/g$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LZm/g;


# direct methods
.method public constructor <init>(LZm/g;)V
    .locals 0

    iput-object p1, p0, LZm/g$a;->a:LZm/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LZm/e;)LYm/a;
    .locals 1

    new-instance v0, LZm/d;

    invoke-direct {v0, p1}, LZm/d;-><init>(LZm/e;)V

    return-object v0
.end method
