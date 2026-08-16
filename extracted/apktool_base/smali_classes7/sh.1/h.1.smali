.class public Lsh/h;
.super Loh/v;
.source "SourceFile"


# static fields
.field public static final c:Lsh/h;

.field public static final d:Lsh/h;

.field public static final e:Lsh/h;

.field public static final f:Lsh/h;

.field public static final g:Lsh/h;

.field public static final h:Lsh/h;

.field public static final i:Lsh/h;

.field public static j:Ljava/util/Map;


# instance fields
.field public final b:Loh/s;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lsh/h;

    new-instance v1, Loh/s;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Loh/s;-><init>(J)V

    invoke-direct {v0, v1}, Lsh/h;-><init>(Loh/s;)V

    sput-object v0, Lsh/h;->c:Lsh/h;

    new-instance v1, Lsh/h;

    new-instance v2, Loh/s;

    const-wide/16 v3, 0x2

    invoke-direct {v2, v3, v4}, Loh/s;-><init>(J)V

    invoke-direct {v1, v2}, Lsh/h;-><init>(Loh/s;)V

    sput-object v1, Lsh/h;->d:Lsh/h;

    new-instance v2, Lsh/h;

    new-instance v3, Loh/s;

    const-wide/16 v4, 0x3

    invoke-direct {v3, v4, v5}, Loh/s;-><init>(J)V

    invoke-direct {v2, v3}, Lsh/h;-><init>(Loh/s;)V

    sput-object v2, Lsh/h;->e:Lsh/h;

    new-instance v3, Lsh/h;

    new-instance v4, Loh/s;

    const-wide/16 v5, 0x4

    invoke-direct {v4, v5, v6}, Loh/s;-><init>(J)V

    invoke-direct {v3, v4}, Lsh/h;-><init>(Loh/s;)V

    sput-object v3, Lsh/h;->f:Lsh/h;

    new-instance v4, Lsh/h;

    new-instance v5, Loh/s;

    const-wide/16 v6, 0x5

    invoke-direct {v5, v6, v7}, Loh/s;-><init>(J)V

    invoke-direct {v4, v5}, Lsh/h;-><init>(Loh/s;)V

    sput-object v4, Lsh/h;->g:Lsh/h;

    new-instance v5, Lsh/h;

    new-instance v6, Loh/s;

    const-wide/16 v7, 0x6

    invoke-direct {v6, v7, v8}, Loh/s;-><init>(J)V

    invoke-direct {v5, v6}, Lsh/h;-><init>(Loh/s;)V

    sput-object v5, Lsh/h;->h:Lsh/h;

    new-instance v6, Lsh/h;

    new-instance v7, Loh/s;

    const-wide/16 v8, 0x7

    invoke-direct {v7, v8, v9}, Loh/s;-><init>(J)V

    invoke-direct {v6, v7}, Lsh/h;-><init>(Loh/s;)V

    sput-object v6, Lsh/h;->i:Lsh/h;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Lsh/h;->j:Ljava/util/Map;

    iget-object v8, v0, Lsh/h;->b:Loh/s;

    invoke-interface {v7, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsh/h;->j:Ljava/util/Map;

    iget-object v7, v1, Lsh/h;->b:Loh/s;

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsh/h;->j:Ljava/util/Map;

    iget-object v1, v2, Lsh/h;->b:Loh/s;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsh/h;->j:Ljava/util/Map;

    iget-object v1, v3, Lsh/h;->b:Loh/s;

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsh/h;->j:Ljava/util/Map;

    iget-object v1, v4, Lsh/h;->b:Loh/s;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsh/h;->j:Ljava/util/Map;

    iget-object v1, v5, Lsh/h;->b:Loh/s;

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lsh/h;->j:Ljava/util/Map;

    iget-object v1, v6, Lsh/h;->b:Loh/s;

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Loh/s;)V
    .locals 0

    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Lsh/h;->b:Loh/s;

    return-void
.end method

.method public static u(Ljava/lang/Object;)Lsh/h;
    .locals 3

    instance-of v0, p0, Lsh/h;

    if-eqz v0, :cond_0

    check-cast p0, Lsh/h;

    return-object p0

    :cond_0
    if-eqz p0, :cond_2

    sget-object v0, Lsh/h;->j:Ljava/util/Map;

    invoke-static {p0}, Loh/s;->F(Ljava/lang/Object;)Loh/s;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsh/h;

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown object in getInstance(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, Lsh/h;->b:Loh/s;

    return-object v0
.end method
