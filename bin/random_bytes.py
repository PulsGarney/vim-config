import random


count = int(input('Please input length: '))
available_bytes = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789'
print(''.join([random.choice(available_bytes) for x in range(count)]))

