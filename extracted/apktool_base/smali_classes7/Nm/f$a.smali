.class public LNm/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZm/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LNm/f;->b(LZm/g$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LNm/f;


# direct methods
.method public constructor <init>(LNm/f;)V
    .locals 0

    iput-object p1, p0, LNm/f$a;->a:LNm/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LZm/e;)LYm/a;
    .locals 1

    new-instance v0, LOm/b;

    invoke-direct {v0, p1}, LOm/b;-><init>(LZm/e;)V

    return-object v0
.end method
