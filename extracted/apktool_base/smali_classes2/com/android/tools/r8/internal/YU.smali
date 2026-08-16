.class public final Lcom/android/tools/r8/internal/YU;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/tools/r8/retrace/MappingPartition;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/YU;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/tools/r8/internal/YU;->b:[B

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/YU;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getPayload()[B
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/YU;->b:[B

    return-object v0
.end method
