.class public LOl/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# static fields
.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;


# instance fields
.field public b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    invoke-static {v0}, LTl/g;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LOl/q;->c:Ljava/lang/String;

    const/4 v0, 0x6

    invoke-static {v0}, LTl/g;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, LOl/q;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LOl/q;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LOl/q;->b:Ljava/lang/String;

    return-object v0
.end method
