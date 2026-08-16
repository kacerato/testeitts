.class public final LB2/C$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LB2/C;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field public static final e:J


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, LB2/C$c;->b:Ljava/lang/String;

    .line 4
    iput p2, p0, LB2/C$c;->c:I

    .line 5
    iput-object p3, p0, LB2/C$c;->d:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;LB2/C$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, LB2/C$c;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 4

    new-instance v0, LB2/C;

    iget-object v1, p0, LB2/C$c;->b:Ljava/lang/String;

    iget v2, p0, LB2/C$c;->c:I

    iget-object v3, p0, LB2/C$c;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, LB2/C;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object v0
.end method
