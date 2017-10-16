def concat(L,K):
    if (L == []):
        return K
    head = L.pop(0)
    print(K, L)
    K.insert(0,head)
    print(K, L)
    print("Next Step")
    return concat(L, K)

L = [1,2]
K = [3,4]
print(concat(L,K))
