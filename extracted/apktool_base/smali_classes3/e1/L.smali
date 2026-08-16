.class public final Le1/L;
.super Le1/K;
.source "SourceFile"


# static fields
.field public static final f:Le1/K;


# instance fields
.field public final transient d:[Ljava/lang/Object;

.field public final transient e:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Le1/L;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1}, Le1/L;-><init>([Ljava/lang/Object;I)V

    sput-object v0, Le1/L;->f:Le1/K;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0}, Le1/K;-><init>()V

    iput-object p1, p0, Le1/L;->d:[Ljava/lang/Object;

    iput p2, p0, Le1/L;->e:I

    return-void
.end method


# virtual methods
.method public final b()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Le1/L;->d:[Ljava/lang/Object;

    return-object v0
.end method

.method public final c()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Le1/L;->e:I

    return v0
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Le1/L;->e:I

    const-string v1, "index"

    invoke-static {p1, v0, v1}, Le1/E;->a(IILjava/lang/String;)I

    iget-object v0, p0, Le1/L;->d:[Ljava/lang/Object;

    aget-object p1, v0, p1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final i([Ljava/lang/Object;I)I
    .locals 2

    iget-object p2, p0, Le1/L;->d:[Ljava/lang/Object;

    iget v0, p0, Le1/L;->e:I

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Le1/L;->e:I

    return v0
.end method
