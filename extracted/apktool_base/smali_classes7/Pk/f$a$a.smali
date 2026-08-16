.class public LPk/f$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LBi/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LPk/f$a;->a(Lhi/b;)LQk/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LPk/f$a;


# direct methods
.method public constructor <init>(LPk/f$a;)V
    .locals 0

    iput-object p1, p0, LPk/f$a$a;->b:LPk/f$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([C)[B
    .locals 0

    invoke-static {p1}, Lorg/bouncycastle/util/w;->k([C)[B

    move-result-object p1

    return-object p1
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "ASCII"

    return-object v0
.end method
