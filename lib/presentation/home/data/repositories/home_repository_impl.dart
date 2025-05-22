import 'package:loyapy/core/core.dart';

import '../../home.dart';

class HomeRepositoryImpl implements HomeRepository {
  @override
  Future<List<ProductModel>> fetchBestDeals() async {
    await Future.delayed(const Duration(seconds: 2)); // simulate API delay
    return [
      ProductModel(
        images: [
          JPGAssets.product11,
          JPGAssets.product12,
          JPGAssets.product13,
          JPGAssets.product14,
          JPGAssets.product15,
        ],
        title: 'Folding Waste Bins Kitchen',
        price: 1250.0,
        originalPrice: 1850.0,
        rating: 4.8,
        features: [
          {"key": "Brand", "value": "U-HOOME"},
          {"key": "Capacity", "value": "9 Liters"},
          {"key": "Colour", "value": "white"},
          {"key": "Opening mechanism", "value": "Open-Top"},
          {"key": "Material", "value": "Plastic"}
        ],
        shortDescription: '''
        <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Details</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        /* Custom font for a clean look */
        body {
            font-family: 'Inter', sans-serif;
            background-color: #f0f2f5; /* Light grey background */
        }
    </style>
</head>
<body class="p-4 sm:p-6 md:p-8 lg:p-10 flex justify-center items-center min-h-screen">
    <div class="bg-white p-6 sm:p-8 md:p-10 rounded-xl shadow-lg max-w-3xl w-full">
        <h1 class="text-2xl sm:text-3xl font-bold text-gray-800 mb-6 text-center">About this item</h1>

        <ul class="space-y-4 text-gray-700 text-lg">
            <li class="flex items-start">
                <span class="text-blue-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-blue-700">Convenient Hanging Design:</strong> Perfectly sized for cabinet kitchen use, saving space and keeping your kitchen clean and tidy. Works great with reusable grocery bags.
                </div>
            </li>

            <li class="flex items-start">
                <span class="text-green-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-green-700">Space-Saving Large Capacity:</strong> Measuring 28.6*25.3*17.5cm (11.26*9.97*6.89"), this collapsible small trash can helps collect all rubbish without taking up precious kitchen space, ensuring a cleaner and well-ordered home.
                </div>
            </li>

            <li class="flex items-start">
                <span class="text-purple-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-purple-700">Premium & Durable Material:</strong> Made of grade environmental protection material, it is non-toxic and tasteless, protecting your health. Sturdy and durable enough for both indoor and outdoor use.
                </div>
            </li>

            <li class="flex items-start">
                <span class="text-yellow-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-yellow-700">Versatile Hanging Options:</strong> This garbage can can be easily hung on kitchen cabinet doors, car doors, or anywhere else needed. Compatible with doors less than 0.86 inch (2.2cm) thick.
                </div>
            </li>

            <li class="flex items-start">
                <span class="text-red-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-red-700">Multi-Purpose Application:</strong> Widely used in the kitchen, bedroom, bathroom, cabinet door, pantry door, drawer, car, and any other location where a convenient waste solution is needed.
                </div>
            </li>
        </ul>
    </div>
</body>
</html>
''',
        description: '''
        <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Details</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        /* Custom font for a clean look */
        body {
            font-family: 'Inter', sans-serif;
            background-color: #f0f2f5; /* Light grey background */
        }
    </style>
</head>
<body class="p-4 sm:p-6 md:p-8 lg:p-10 flex justify-center items-center min-h-screen">
    <div class="bg-white p-6 sm:p-8 md:p-10 rounded-xl shadow-lg max-w-3xl w-full">
        <h1 class="text-2xl sm:text-3xl font-bold text-gray-800 mb-6 text-center">Product Details</h1>

        <ul class="space-y-4 text-gray-700 text-lg">
            <li class="flex items-start">
                <span class="text-blue-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-blue-700">Convenient Hanging Design:</strong> Perfectly sized for cabinet kitchen use, saving space and keeping your kitchen clean and tidy. Works great with reusable grocery bags.
                </div>
            </li>

            <li class="flex items-start">
                <span class="text-green-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-green-700">Space-Saving Large Capacity:</strong> Measuring 28.6*25.3*17.5cm (11.26*9.97*6.89"), this collapsible small trash can helps collect all rubbish without taking up precious kitchen space, ensuring a cleaner and well-ordered home.
                </div>
            </li>

            <li class="flex items-start">
                <span class="text-purple-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-purple-700">Premium & Durable Material:</strong> Made of grade environmental protection material, it is non-toxic and tasteless, protecting your health. Sturdy and durable enough for both indoor and outdoor use.
                </div>
            </li>

            <li class="flex items-start">
                <span class="text-yellow-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-yellow-700">Versatile Hanging Options:</strong> This garbage can can be easily hung on kitchen cabinet doors, car doors, or anywhere else needed. Compatible with doors less than 0.86 inch (2.2cm) thick.
                </div>
            </li>

            <li class="flex items-start">
                <span class="text-red-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-red-700">Multi-Purpose Application:</strong> Widely used in the kitchen, bedroom, bathroom, cabinet door, pantry door, drawer, car, and any other location where a convenient waste solution is needed.
                </div>
            </li>
        </ul>

        <h2 class="text-xl sm:text-2xl font-bold text-gray-700 mb-4 mt-8">Product Information</h2>
        <div class="overflow-x-auto mb-8">
            <table class="min-w-full bg-white border border-gray-200 rounded-lg shadow-sm">
                <tbody class="divide-y divide-gray-200">
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Product Dimensions</td>
                        <td class="px-4 py-2 text-gray-700">25.3 x 17.5 x 28.6 cm; 150 g</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Date First Available</td>
                        <td class="px-4 py-2 text-gray-700">16 July 2020</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Manufacturer</td>
                        <td class="px-4 py-2 text-gray-700">U-HOOME</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">ASIN</td>
                        <td class="px-4 py-2 text-gray-700">B08D3D2S4V</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Item model number</td>
                        <td class="px-4 py-2 text-gray-700">LC-HT-05</td>
                    </tr>
                </tbody>
            </table>
        </div>

        <h2 class="text-xl sm:text-2xl font-bold text-gray-700 mb-4">Best Sellers Rank</h2>
        <ul class="space-y-2 text-gray-700 text-base mb-8 list-disc list-inside">
            <li>#10,272 in Home (See Top 100 in Home)</li>
            <li>#98 in Kitchen Waste Bins</li>
        </ul>

        <h2 class="text-xl sm:text-2xl font-bold text-gray-700 mb-4">Customer reviews</h2>
        <p class="text-gray-700 text-base mb-8">
            <span class="font-semibold">4.1 out of 5 stars</span> (98 ratings)
        </p>

        <h2 class="text-xl sm:text-2xl font-bold text-gray-700 mb-4">Technical Details</h2>
        <div class="overflow-x-auto mb-8">
            <table class="min-w-full bg-white border border-gray-200 rounded-lg shadow-sm">
                <tbody class="divide-y divide-gray-200">
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Manufacturer</td>
                        <td class="px-4 py-2 text-gray-700">U-HOOME</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Part number</td>
                        <td class="px-4 py-2 text-gray-700">LC-HT-05</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Item Weight</td>
                        <td class="px-4 py-2 text-gray-700">150 g</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Product Dimensions</td>
                        <td class="px-4 py-2 text-gray-700">25.3 x 17.5 x 28.6 cm; 150 g</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Item model number</td>
                        <td class="px-4 py-2 text-gray-700">LC-HT-05</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Color</td>
                        <td class="px-4 py-2 text-gray-700">white</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Finish</td>
                        <td class="px-4 py-2 text-gray-700">Unfinished</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Material</td>
                        <td class="px-4 py-2 text-gray-700">Plastic</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Shape</td>
                        <td class="px-4 py-2 text-gray-700">Rectangular</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Plug Profile</td>
                        <td class="px-4 py-2 text-gray-700">Surface Mount</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Special Features</td>
                        <td class="px-4 py-2 text-gray-700">Open Top</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Included components</td>
                        <td class="px-4 py-2 text-gray-700">trash</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Batteries Required?</td>
                        <td class="px-4 py-2 text-gray-700">No</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
''',
      ),
      ProductModel(
        images: [
          JPGAssets.product21,
          JPGAssets.product22,
          JPGAssets.product23,
          JPGAssets.product24,
          JPGAssets.product25,
        ],
        title: 'Rechargeable Electric Cleaning Brush',
        price: 1250.0,
        originalPrice: 1750.0,
        rating: 4.7,
        features: [
          {"key": "Brand", "value": "FGOGO"},
          {"key": "Colour", "value": "White"},
          {"key": "Handle material", "value": "Plastic"},
          {
            "key": "Specific uses for product",
            "value": "Window, Floor, Toilet"
          },
          {"key": "Product dimensions", "value": "7.5L x 3W x 19H centimeters"}
        ],
        shortDescription: '''
        <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Highlights</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        /* Custom font for a clean look */
        body {
            font-family: 'Inter', sans-serif;
            background-color: #f0f2f5; /* Light grey background */
        }
    </style>
</head>
<body class="p-4 sm:p-6 md:p-8 lg:p-10 flex justify-center items-center min-h-screen">
    <div class="bg-white p-6 sm:p-8 md:p-10 rounded-xl shadow-lg max-w-3xl w-full">
        <h1 class="text-2xl sm:text-3xl font-bold text-gray-800 mb-6 text-center">Product Highlights</h1>

        <ul class="space-y-4 text-gray-700 text-lg">
            <li class="flex items-start">
                <span class="text-blue-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-blue-700">Effortless Cleaning:</strong> One-button start with 360° rotation for powerful stain and dirt removal, reaching difficult corners with ease. Saves labor and protects joints.
                </div>
            </li>

            <li class="flex items-start">
                <span class="text-green-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-green-700">Extended Battery Life:</strong> Includes 3 replaceable cleaner heads and USB charging. Works up to 3 hours per charge for uninterrupted cleaning sessions.
                </div>
            </li>

            <li class="flex items-start">
                <span class="text-purple-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-purple-700">Durable & Portable Design:</strong> Crafted from high-quality ABS material. Features adhesive hooks for convenient wall storage and drainage.
                </div>
            </li>

            <li class="flex items-start">
                <span class="text-yellow-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-yellow-700">Secure Grip:</strong> Anti-slip handle ensures a comfortable and practical grip, even when wet.
                </div>
            </li>

            <li class="flex items-start">
                <span class="text-red-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-red-700">Versatile Application:</strong> Perfect for kitchens, living rooms, bathrooms, floors, tiles, furniture, stovetops, pots, cars, and more. An ideal gift for loved ones.
                </div>
            </li>
        </ul>
    </div>
</body>
</html>
''',
        description: '''
        <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Details</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        /* Custom font for a clean look */
        body {
            font-family: 'Inter', sans-serif;
            background-color: #f0f2f5; /* Light grey background */
        }
    </style>
</head>
<body class="p-4 sm:p-6 md:p-8 lg:p-10 flex justify-center items-center min-h-screen">
    <div class="bg-white p-6 sm:p-8 md:p-10 rounded-xl shadow-lg max-w-3xl w-full">
        <h1 class="text-2xl sm:text-3xl font-bold text-gray-800 mb-6 text-center">About this item</h1>

        <h2 class="text-xl sm:text-2xl font-bold text-gray-700 mb-4">Highlights</h2>
        <ul class="space-y-4 text-gray-700 text-lg mb-8">
            <li class="flex items-start">
                <span class="text-blue-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-blue-700">Effortless Cleaning:</strong> One-button start with 360° rotation for powerful stain and dirt removal, reaching difficult corners with ease. Saves labor and protects joints.
                </div>
            </li>

            <li class="flex items-start">
                <span class="text-green-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-green-700">Extended Battery Life:</strong> Includes 3 replaceable cleaner heads and USB charging. Works up to 3 hours per charge for uninterrupted cleaning sessions.
                </div>
            </li>

            <li class="flex items-start">
                <span class="text-purple-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-purple-700">Durable & Portable Design:</strong> Crafted from high-quality ABS material. Features adhesive hooks for convenient wall storage and drainage.
                </div>
            </li>

            <li class="flex items-start">
                <span class="text-yellow-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-yellow-700">Secure Grip:</strong> Anti-slip handle ensures a comfortable and practical grip, even when wet.
                </div>
            </li>

            <li class="flex items-start">
                <span class="text-red-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-red-700">Versatile Application:</strong> Perfect for kitchens, living rooms, bathrooms, floors, tiles, furniture, stovetops, pots, cars, and more. An ideal gift for loved ones.
                </div>
            </li>
        </ul>

        <h2 class="text-xl sm:text-2xl font-bold text-gray-700 mb-4">Features</h2>
        <ul class="space-y-2 text-gray-700 text-base mb-8 list-disc list-inside">
            <li><strong class="text-gray-800">Ergonomic Design:</strong> Portable, light and comfortable to hold.</li>
            <li><strong class="text-gray-800">Cordless Convenience:</strong> Get rid of the annoyance caused by traditional power cord tangles, save time and clean easily and effectively.</li>
            <li><strong class="text-gray-800">Long-lasting Battery:</strong> The battery capacity is 1500 mAh, after charging for about 4-5 hours, it can work continuously for up to 200 minutes.</li>
            <li><strong class="text-gray-800">Dual Speed Adjustment:</strong> The speed of the electric scrubber has two adjustments, allowing you to easily and effectively clean stubborn and dirty stains.</li>
        </ul>

        <h2 class="text-xl sm:text-2xl font-bold text-gray-700 mb-4">Specification</h2>
        <div class="overflow-x-auto mb-8">
            <table class="min-w-full bg-white border border-gray-200 rounded-lg shadow-sm">
                <tbody class="divide-y divide-gray-200">
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Material</td>
                        <td class="px-4 py-2 text-gray-700">ABS</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Weight</td>
                        <td class="px-4 py-2 text-gray-700">497g</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Product size</td>
                        <td class="px-4 py-2 text-gray-700">19*7.5*5cm / 7.48*2.95*1.96inch</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Power supply mode</td>
                        <td class="px-4 py-2 text-gray-700">USB power supply</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Battery capacity</td>
                        <td class="px-4 py-2 text-gray-700">1500mAh</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Speed</td>
                        <td class="px-4 py-2 text-gray-700">350PRM</td>
                    </tr>
                </tbody>
            </table>
        </div>

        <h2 class="text-xl sm:text-2xl font-bold text-gray-700 mb-4">Product List</h2>
        <ul class="space-y-2 text-gray-700 text-base mb-8 list-disc list-inside">
            <li>1 x Electric brush host</li>
            <li>6 x brush heads</li>
            <li>1 x USB charging cable</li>
            <li>1 x Instruction manual</li>
        </ul>

        <h2 class="text-xl sm:text-2xl font-bold text-gray-700 mb-4">Note</h2>
        <div class="p-4 bg-red-50 rounded-lg shadow-sm text-gray-700 text-base">
            <p class="mb-2">1. The brush head can be in water, please do not put the whole device all the way into the water.</p>
            <p class="mb-2">2. Due to the different monitor and light effect,the actual color of the item might be slightly different from the color showed on the pictures.Thank you!</p>
            <p>3. Please allow 1-2cm measuring deviation due to manual measurement.</p>
        </div>
    </div>
</body>
</html>
''',
      ),
      ProductModel(
        images: [
          JPGAssets.product12,
          JPGAssets.product11,
          JPGAssets.product13,
          JPGAssets.product14,
          JPGAssets.product15,
        ],
        title: 'Foldable Trash Can Collapsible Garbage Can for Home',
        price: 1250.0,
        originalPrice: 1850.0,
        rating: 4.8,
        features: [
          {"key": "Brand", "value": "U-HOOME"},
          {"key": "Capacity", "value": "9 Liters"},
          {"key": "Colour", "value": "white"},
          {"key": "Opening mechanism", "value": "Open-Top"},
          {"key": "Material", "value": "Plastic"}
        ],
        shortDescription: '''
        <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Details</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        /* Custom font for a clean look */
        body {
            font-family: 'Inter', sans-serif;
            background-color: #f0f2f5; /* Light grey background */
        }
    </style>
</head>
<body class="p-4 sm:p-6 md:p-8 lg:p-10 flex justify-center items-center min-h-screen">
    <div class="bg-white p-6 sm:p-8 md:p-10 rounded-xl shadow-lg max-w-3xl w-full">
        <h1 class="text-2xl sm:text-3xl font-bold text-gray-800 mb-6 text-center">About this item</h1>

        <ul class="space-y-4 text-gray-700 text-lg">
            <li class="flex items-start">
                <span class="text-blue-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-blue-700">Convenient Hanging Design:</strong> Perfectly sized for cabinet kitchen use, saving space and keeping your kitchen clean and tidy. Works great with reusable grocery bags.
                </div>
            </li>

            <li class="flex items-start">
                <span class="text-green-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-green-700">Space-Saving Large Capacity:</strong> Measuring 28.6*25.3*17.5cm (11.26*9.97*6.89"), this collapsible small trash can helps collect all rubbish without taking up precious kitchen space, ensuring a cleaner and well-ordered home.
                </div>
            </li>

            <li class="flex items-start">
                <span class="text-purple-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-purple-700">Premium & Durable Material:</strong> Made of grade environmental protection material, it is non-toxic and tasteless, protecting your health. Sturdy and durable enough for both indoor and outdoor use.
                </div>
            </li>

            <li class="flex items-start">
                <span class="text-yellow-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-yellow-700">Versatile Hanging Options:</strong> This garbage can can be easily hung on kitchen cabinet doors, car doors, or anywhere else needed. Compatible with doors less than 0.86 inch (2.2cm) thick.
                </div>
            </li>

            <li class="flex items-start">
                <span class="text-red-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-red-700">Multi-Purpose Application:</strong> Widely used in the kitchen, bedroom, bathroom, cabinet door, pantry door, drawer, car, and any other location where a convenient waste solution is needed.
                </div>
            </li>
        </ul>
    </div>
</body>
</html>
''',
        description: '''
        <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Details</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        /* Custom font for a clean look */
        body {
            font-family: 'Inter', sans-serif;
            background-color: #f0f2f5; /* Light grey background */
        }
    </style>
</head>
<body class="p-4 sm:p-6 md:p-8 lg:p-10 flex justify-center items-center min-h-screen">
    <div class="bg-white p-6 sm:p-8 md:p-10 rounded-xl shadow-lg max-w-3xl w-full">
        <h1 class="text-2xl sm:text-3xl font-bold text-gray-800 mb-6 text-center">Product Details</h1>

        <ul class="space-y-4 text-gray-700 text-lg">
            <li class="flex items-start">
                <span class="text-blue-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-blue-700">Convenient Hanging Design:</strong> Perfectly sized for cabinet kitchen use, saving space and keeping your kitchen clean and tidy. Works great with reusable grocery bags.
                </div>
            </li>

            <li class="flex items-start">
                <span class="text-green-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-green-700">Space-Saving Large Capacity:</strong> Measuring 28.6*25.3*17.5cm (11.26*9.97*6.89"), this collapsible small trash can helps collect all rubbish without taking up precious kitchen space, ensuring a cleaner and well-ordered home.
                </div>
            </li>

            <li class="flex items-start">
                <span class="text-purple-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-purple-700">Premium & Durable Material:</strong> Made of grade environmental protection material, it is non-toxic and tasteless, protecting your health. Sturdy and durable enough for both indoor and outdoor use.
                </div>
            </li>

            <li class="flex items-start">
                <span class="text-yellow-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-yellow-700">Versatile Hanging Options:</strong> This garbage can can be easily hung on kitchen cabinet doors, car doors, or anywhere else needed. Compatible with doors less than 0.86 inch (2.2cm) thick.
                </div>
            </li>

            <li class="flex items-start">
                <span class="text-red-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-red-700">Multi-Purpose Application:</strong> Widely used in the kitchen, bedroom, bathroom, cabinet door, pantry door, drawer, car, and any other location where a convenient waste solution is needed.
                </div>
            </li>
        </ul>

        <h2 class="text-xl sm:text-2xl font-bold text-gray-700 mb-4 mt-8">Product Information</h2>
        <div class="overflow-x-auto mb-8">
            <table class="min-w-full bg-white border border-gray-200 rounded-lg shadow-sm">
                <tbody class="divide-y divide-gray-200">
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Product Dimensions</td>
                        <td class="px-4 py-2 text-gray-700">25.3 x 17.5 x 28.6 cm; 150 g</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Date First Available</td>
                        <td class="px-4 py-2 text-gray-700">16 July 2020</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Manufacturer</td>
                        <td class="px-4 py-2 text-gray-700">U-HOOME</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">ASIN</td>
                        <td class="px-4 py-2 text-gray-700">B08D3D2S4V</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Item model number</td>
                        <td class="px-4 py-2 text-gray-700">LC-HT-05</td>
                    </tr>
                </tbody>
            </table>
        </div>

        <h2 class="text-xl sm:text-2xl font-bold text-gray-700 mb-4">Best Sellers Rank</h2>
        <ul class="space-y-2 text-gray-700 text-base mb-8 list-disc list-inside">
            <li>#10,272 in Home (See Top 100 in Home)</li>
            <li>#98 in Kitchen Waste Bins</li>
        </ul>

        <h2 class="text-xl sm:text-2xl font-bold text-gray-700 mb-4">Customer reviews</h2>
        <p class="text-gray-700 text-base mb-8">
            <span class="font-semibold">4.1 out of 5 stars</span> (98 ratings)
        </p>

        <h2 class="text-xl sm:text-2xl font-bold text-gray-700 mb-4">Technical Details</h2>
        <div class="overflow-x-auto mb-8">
            <table class="min-w-full bg-white border border-gray-200 rounded-lg shadow-sm">
                <tbody class="divide-y divide-gray-200">
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Manufacturer</td>
                        <td class="px-4 py-2 text-gray-700">U-HOOME</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Part number</td>
                        <td class="px-4 py-2 text-gray-700">LC-HT-05</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Item Weight</td>
                        <td class="px-4 py-2 text-gray-700">150 g</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Product Dimensions</td>
                        <td class="px-4 py-2 text-gray-700">25.3 x 17.5 x 28.6 cm; 150 g</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Item model number</td>
                        <td class="px-4 py-2 text-gray-700">LC-HT-05</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Color</td>
                        <td class="px-4 py-2 text-gray-700">white</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Finish</td>
                        <td class="px-4 py-2 text-gray-700">Unfinished</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Material</td>
                        <td class="px-4 py-2 text-gray-700">Plastic</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Shape</td>
                        <td class="px-4 py-2 text-gray-700">Rectangular</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Plug Profile</td>
                        <td class="px-4 py-2 text-gray-700">Surface Mount</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Special Features</td>
                        <td class="px-4 py-2 text-gray-700">Open Top</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Included components</td>
                        <td class="px-4 py-2 text-gray-700">trash</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Batteries Required?</td>
                        <td class="px-4 py-2 text-gray-700">No</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
''',
      ),
      ProductModel(
        images: [
          JPGAssets.product22,
          JPGAssets.product21,
          JPGAssets.product23,
          JPGAssets.product24,
          JPGAssets.product25,
        ],
        title: 'Electric Cleaning Brush for Kitchen',
        price: 1250.0,
        originalPrice: 1750.0,
        rating: 4.7,
        features: [
          {"key": "Brand", "value": "FGOGO"},
          {"key": "Colour", "value": "White"},
          {"key": "Handle material", "value": "Plastic"},
          {
            "key": "Specific uses for product",
            "value": "Window, Floor, Toilet"
          },
          {"key": "Product dimensions", "value": "7.5L x 3W x 19H centimeters"}
        ],
        shortDescription: '''
        <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Highlights</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        /* Custom font for a clean look */
        body {
            font-family: 'Inter', sans-serif;
            background-color: #f0f2f5; /* Light grey background */
        }
    </style>
</head>
<body class="p-4 sm:p-6 md:p-8 lg:p-10 flex justify-center items-center min-h-screen">
    <div class="bg-white p-6 sm:p-8 md:p-10 rounded-xl shadow-lg max-w-3xl w-full">
        <h1 class="text-2xl sm:text-3xl font-bold text-gray-800 mb-6 text-center">Product Highlights</h1>

        <ul class="space-y-4 text-gray-700 text-lg">
            <li class="flex items-start">
                <span class="text-blue-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-blue-700">Effortless Cleaning:</strong> One-button start with 360° rotation for powerful stain and dirt removal, reaching difficult corners with ease. Saves labor and protects joints.
                </div>
            </li>

            <li class="flex items-start">
                <span class="text-green-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-green-700">Extended Battery Life:</strong> Includes 3 replaceable cleaner heads and USB charging. Works up to 3 hours per charge for uninterrupted cleaning sessions.
                </div>
            </li>

            <li class="flex items-start">
                <span class="text-purple-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-purple-700">Durable & Portable Design:</strong> Crafted from high-quality ABS material. Features adhesive hooks for convenient wall storage and drainage.
                </div>
            </li>

            <li class="flex items-start">
                <span class="text-yellow-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-yellow-700">Secure Grip:</strong> Anti-slip handle ensures a comfortable and practical grip, even when wet.
                </div>
            </li>

            <li class="flex items-start">
                <span class="text-red-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-red-700">Versatile Application:</strong> Perfect for kitchens, living rooms, bathrooms, floors, tiles, furniture, stovetops, pots, cars, and more. An ideal gift for loved ones.
                </div>
            </li>
        </ul>
    </div>
</body>
</html>
''',
        description: '''
        <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Details</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        /* Custom font for a clean look */
        body {
            font-family: 'Inter', sans-serif;
            background-color: #f0f2f5; /* Light grey background */
        }
    </style>
</head>
<body class="p-4 sm:p-6 md:p-8 lg:p-10 flex justify-center items-center min-h-screen">
    <div class="bg-white p-6 sm:p-8 md:p-10 rounded-xl shadow-lg max-w-3xl w-full">
        <h1 class="text-2xl sm:text-3xl font-bold text-gray-800 mb-6 text-center">About this item</h1>

        <h2 class="text-xl sm:text-2xl font-bold text-gray-700 mb-4">Highlights</h2>
        <ul class="space-y-4 text-gray-700 text-lg mb-8">
            <li class="flex items-start">
                <span class="text-blue-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-blue-700">Effortless Cleaning:</strong> One-button start with 360° rotation for powerful stain and dirt removal, reaching difficult corners with ease. Saves labor and protects joints.
                </div>
            </li>

            <li class="flex items-start">
                <span class="text-green-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-green-700">Extended Battery Life:</strong> Includes 3 replaceable cleaner heads and USB charging. Works up to 3 hours per charge for uninterrupted cleaning sessions.
                </div>
            </li>

            <li class="flex items-start">
                <span class="text-purple-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-purple-700">Durable & Portable Design:</strong> Crafted from high-quality ABS material. Features adhesive hooks for convenient wall storage and drainage.
                </div>
            </li>

            <li class="flex items-start">
                <span class="text-yellow-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-yellow-700">Secure Grip:</strong> Anti-slip handle ensures a comfortable and practical grip, even when wet.
                </div>
            </li>

            <li class="flex items-start">
                <span class="text-red-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-red-700">Versatile Application:</strong> Perfect for kitchens, living rooms, bathrooms, floors, tiles, furniture, stovetops, pots, cars, and more. An ideal gift for loved ones.
                </div>
            </li>
        </ul>

        <h2 class="text-xl sm:text-2xl font-bold text-gray-700 mb-4">Features</h2>
        <ul class="space-y-2 text-gray-700 text-base mb-8 list-disc list-inside">
            <li><strong class="text-gray-800">Ergonomic Design:</strong> Portable, light and comfortable to hold.</li>
            <li><strong class="text-gray-800">Cordless Convenience:</strong> Get rid of the annoyance caused by traditional power cord tangles, save time and clean easily and effectively.</li>
            <li><strong class="text-gray-800">Long-lasting Battery:</strong> The battery capacity is 1500 mAh, after charging for about 4-5 hours, it can work continuously for up to 200 minutes.</li>
            <li><strong class="text-gray-800">Dual Speed Adjustment:</strong> The speed of the electric scrubber has two adjustments, allowing you to easily and effectively clean stubborn and dirty stains.</li>
        </ul>

        <h2 class="text-xl sm:text-2xl font-bold text-gray-700 mb-4">Specification</h2>
        <div class="overflow-x-auto mb-8">
            <table class="min-w-full bg-white border border-gray-200 rounded-lg shadow-sm">
                <tbody class="divide-y divide-gray-200">
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Material</td>
                        <td class="px-4 py-2 text-gray-700">ABS</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Weight</td>
                        <td class="px-4 py-2 text-gray-700">497g</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Product size</td>
                        <td class="px-4 py-2 text-gray-700">19*7.5*5cm / 7.48*2.95*1.96inch</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Power supply mode</td>
                        <td class="px-4 py-2 text-gray-700">USB power supply</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Battery capacity</td>
                        <td class="px-4 py-2 text-gray-700">1500mAh</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Speed</td>
                        <td class="px-4 py-2 text-gray-700">350PRM</td>
                    </tr>
                </tbody>
            </table>
        </div>

        <h2 class="text-xl sm:text-2xl font-bold text-gray-700 mb-4">Product List</h2>
        <ul class="space-y-2 text-gray-700 text-base mb-8 list-disc list-inside">
            <li>1 x Electric brush host</li>
            <li>6 x brush heads</li>
            <li>1 x USB charging cable</li>
            <li>1 x Instruction manual</li>
        </ul>

        <h2 class="text-xl sm:text-2xl font-bold text-gray-700 mb-4">Note</h2>
        <div class="p-4 bg-red-50 rounded-lg shadow-sm text-gray-700 text-base">
            <p class="mb-2">1. The brush head can be in water, please do not put the whole device all the way into the water.</p>
            <p class="mb-2">2. Due to the different monitor and light effect,the actual color of the item might be slightly different from the color showed on the pictures.Thank you!</p>
            <p>3. Please allow 1-2cm measuring deviation due to manual measurement.</p>
        </div>
    </div>
</body>
</html>
''',
      ),
      ProductModel(
        images: [
          JPGAssets.product14,
          JPGAssets.product12,
          JPGAssets.product11,
          JPGAssets.product13,
          JPGAssets.product15,
        ],
        title:
            'Foldable Trash Can Collapsible Garbage Can for Home Kitchen Room Cabinet Door Drawer or Car',
        price: 1250.0,
        originalPrice: 1850.0,
        rating: 4.8,
        features: [
          {"key": "Brand", "value": "U-HOOME"},
          {"key": "Capacity", "value": "9 Liters"},
          {"key": "Colour", "value": "white"},
          {"key": "Opening mechanism", "value": "Open-Top"},
          {"key": "Material", "value": "Plastic"}
        ],
        shortDescription: '''
        <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Details</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        /* Custom font for a clean look */
        body {
            font-family: 'Inter', sans-serif;
            background-color: #f0f2f5; /* Light grey background */
        }
    </style>
</head>
<body class="p-4 sm:p-6 md:p-8 lg:p-10 flex justify-center items-center min-h-screen">
    <div class="bg-white p-6 sm:p-8 md:p-10 rounded-xl shadow-lg max-w-3xl w-full">
        <h1 class="text-2xl sm:text-3xl font-bold text-gray-800 mb-6 text-center">About this item</h1>

        <ul class="space-y-4 text-gray-700 text-lg">
            <li class="flex items-start">
                <span class="text-blue-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-blue-700">Convenient Hanging Design:</strong> Perfectly sized for cabinet kitchen use, saving space and keeping your kitchen clean and tidy. Works great with reusable grocery bags.
                </div>
            </li>

            <li class="flex items-start">
                <span class="text-green-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-green-700">Space-Saving Large Capacity:</strong> Measuring 28.6*25.3*17.5cm (11.26*9.97*6.89"), this collapsible small trash can helps collect all rubbish without taking up precious kitchen space, ensuring a cleaner and well-ordered home.
                </div>
            </li>

            <li class="flex items-start">
                <span class="text-purple-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-purple-700">Premium & Durable Material:</strong> Made of grade environmental protection material, it is non-toxic and tasteless, protecting your health. Sturdy and durable enough for both indoor and outdoor use.
                </div>
            </li>

            <li class="flex items-start">
                <span class="text-yellow-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-yellow-700">Versatile Hanging Options:</strong> This garbage can can be easily hung on kitchen cabinet doors, car doors, or anywhere else needed. Compatible with doors less than 0.86 inch (2.2cm) thick.
                </div>
            </li>

            <li class="flex items-start">
                <span class="text-red-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-red-700">Multi-Purpose Application:</strong> Widely used in the kitchen, bedroom, bathroom, cabinet door, pantry door, drawer, car, and any other location where a convenient waste solution is needed.
                </div>
            </li>
        </ul>
    </div>
</body>
</html>
''',
        description: '''
        <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Details</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        /* Custom font for a clean look */
        body {
            font-family: 'Inter', sans-serif;
            background-color: #f0f2f5; /* Light grey background */
        }
    </style>
</head>
<body class="p-4 sm:p-6 md:p-8 lg:p-10 flex justify-center items-center min-h-screen">
    <div class="bg-white p-6 sm:p-8 md:p-10 rounded-xl shadow-lg max-w-3xl w-full">
        <h1 class="text-2xl sm:text-3xl font-bold text-gray-800 mb-6 text-center">Product Details</h1>

        <ul class="space-y-4 text-gray-700 text-lg">
            <li class="flex items-start">
                <span class="text-blue-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-blue-700">Convenient Hanging Design:</strong> Perfectly sized for cabinet kitchen use, saving space and keeping your kitchen clean and tidy. Works great with reusable grocery bags.
                </div>
            </li>

            <li class="flex items-start">
                <span class="text-green-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-green-700">Space-Saving Large Capacity:</strong> Measuring 28.6*25.3*17.5cm (11.26*9.97*6.89"), this collapsible small trash can helps collect all rubbish without taking up precious kitchen space, ensuring a cleaner and well-ordered home.
                </div>
            </li>

            <li class="flex items-start">
                <span class="text-purple-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-purple-700">Premium & Durable Material:</strong> Made of grade environmental protection material, it is non-toxic and tasteless, protecting your health. Sturdy and durable enough for both indoor and outdoor use.
                </div>
            </li>

            <li class="flex items-start">
                <span class="text-yellow-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-yellow-700">Versatile Hanging Options:</strong> This garbage can can be easily hung on kitchen cabinet doors, car doors, or anywhere else needed. Compatible with doors less than 0.86 inch (2.2cm) thick.
                </div>
            </li>

            <li class="flex items-start">
                <span class="text-red-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-red-700">Multi-Purpose Application:</strong> Widely used in the kitchen, bedroom, bathroom, cabinet door, pantry door, drawer, car, and any other location where a convenient waste solution is needed.
                </div>
            </li>
        </ul>

        <h2 class="text-xl sm:text-2xl font-bold text-gray-700 mb-4 mt-8">Product Information</h2>
        <div class="overflow-x-auto mb-8">
            <table class="min-w-full bg-white border border-gray-200 rounded-lg shadow-sm">
                <tbody class="divide-y divide-gray-200">
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Product Dimensions</td>
                        <td class="px-4 py-2 text-gray-700">25.3 x 17.5 x 28.6 cm; 150 g</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Date First Available</td>
                        <td class="px-4 py-2 text-gray-700">16 July 2020</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Manufacturer</td>
                        <td class="px-4 py-2 text-gray-700">U-HOOME</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">ASIN</td>
                        <td class="px-4 py-2 text-gray-700">B08D3D2S4V</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Item model number</td>
                        <td class="px-4 py-2 text-gray-700">LC-HT-05</td>
                    </tr>
                </tbody>
            </table>
        </div>

        <h2 class="text-xl sm:text-2xl font-bold text-gray-700 mb-4">Best Sellers Rank</h2>
        <ul class="space-y-2 text-gray-700 text-base mb-8 list-disc list-inside">
            <li>#10,272 in Home (See Top 100 in Home)</li>
            <li>#98 in Kitchen Waste Bins</li>
        </ul>

        <h2 class="text-xl sm:text-2xl font-bold text-gray-700 mb-4">Customer reviews</h2>
        <p class="text-gray-700 text-base mb-8">
            <span class="font-semibold">4.1 out of 5 stars</span> (98 ratings)
        </p>

        <h2 class="text-xl sm:text-2xl font-bold text-gray-700 mb-4">Technical Details</h2>
        <div class="overflow-x-auto mb-8">
            <table class="min-w-full bg-white border border-gray-200 rounded-lg shadow-sm">
                <tbody class="divide-y divide-gray-200">
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Manufacturer</td>
                        <td class="px-4 py-2 text-gray-700">U-HOOME</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Part number</td>
                        <td class="px-4 py-2 text-gray-700">LC-HT-05</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Item Weight</td>
                        <td class="px-4 py-2 text-gray-700">150 g</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Product Dimensions</td>
                        <td class="px-4 py-2 text-gray-700">25.3 x 17.5 x 28.6 cm; 150 g</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Item model number</td>
                        <td class="px-4 py-2 text-gray-700">LC-HT-05</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Color</td>
                        <td class="px-4 py-2 text-gray-700">white</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Finish</td>
                        <td class="px-4 py-2 text-gray-700">Unfinished</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Material</td>
                        <td class="px-4 py-2 text-gray-700">Plastic</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Shape</td>
                        <td class="px-4 py-2 text-gray-700">Rectangular</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Plug Profile</td>
                        <td class="px-4 py-2 text-gray-700">Surface Mount</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Special Features</td>
                        <td class="px-4 py-2 text-gray-700">Open Top</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Included components</td>
                        <td class="px-4 py-2 text-gray-700">trash</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Batteries Required?</td>
                        <td class="px-4 py-2 text-gray-700">No</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>
''',
      ),
      ProductModel(
        images: [
          JPGAssets.product23,
          JPGAssets.product21,
          JPGAssets.product22,
          JPGAssets.product24,
          JPGAssets.product25,
        ],
        title:
            'Automatic Spin Scrubber Wireless USB Rechargeable Electric Cleaning Brush for Kitchen & Bathtub Tile Dishwashing Safe Baby Use',
        price: 1250.0,
        originalPrice: 1750.0,
        rating: 4.7,
        features: [
          {"key": "Brand", "value": "FGOGO"},
          {"key": "Colour", "value": "White"},
          {"key": "Handle material", "value": "Plastic"},
          {
            "key": "Specific uses for product",
            "value": "Window, Floor, Toilet"
          },
          {"key": "Product dimensions", "value": "7.5L x 3W x 19H centimeters"}
        ],
        shortDescription: '''
        <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Highlights</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        /* Custom font for a clean look */
        body {
            font-family: 'Inter', sans-serif;
            background-color: #f0f2f5; /* Light grey background */
        }
    </style>
</head>
<body class="p-4 sm:p-6 md:p-8 lg:p-10 flex justify-center items-center min-h-screen">
    <div class="bg-white p-6 sm:p-8 md:p-10 rounded-xl shadow-lg max-w-3xl w-full">
        <h1 class="text-2xl sm:text-3xl font-bold text-gray-800 mb-6 text-center">Product Highlights</h1>

        <ul class="space-y-4 text-gray-700 text-lg">
            <li class="flex items-start">
                <span class="text-blue-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-blue-700">Effortless Cleaning:</strong> One-button start with 360° rotation for powerful stain and dirt removal, reaching difficult corners with ease. Saves labor and protects joints.
                </div>
            </li>

            <li class="flex items-start">
                <span class="text-green-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-green-700">Extended Battery Life:</strong> Includes 3 replaceable cleaner heads and USB charging. Works up to 3 hours per charge for uninterrupted cleaning sessions.
                </div>
            </li>

            <li class="flex items-start">
                <span class="text-purple-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-purple-700">Durable & Portable Design:</strong> Crafted from high-quality ABS material. Features adhesive hooks for convenient wall storage and drainage.
                </div>
            </li>

            <li class="flex items-start">
                <span class="text-yellow-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-yellow-700">Secure Grip:</strong> Anti-slip handle ensures a comfortable and practical grip, even when wet.
                </div>
            </li>

            <li class="flex items-start">
                <span class="text-red-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-red-700">Versatile Application:</strong> Perfect for kitchens, living rooms, bathrooms, floors, tiles, furniture, stovetops, pots, cars, and more. An ideal gift for loved ones.
                </div>
            </li>
        </ul>
    </div>
</body>
</html>
''',
        description: '''
        <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Product Details</title>
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        /* Custom font for a clean look */
        body {
            font-family: 'Inter', sans-serif;
            background-color: #f0f2f5; /* Light grey background */
        }
    </style>
</head>
<body class="p-4 sm:p-6 md:p-8 lg:p-10 flex justify-center items-center min-h-screen">
    <div class="bg-white p-6 sm:p-8 md:p-10 rounded-xl shadow-lg max-w-3xl w-full">
        <h1 class="text-2xl sm:text-3xl font-bold text-gray-800 mb-6 text-center">About this item</h1>

        <h2 class="text-xl sm:text-2xl font-bold text-gray-700 mb-4">Highlights</h2>
        <ul class="space-y-4 text-gray-700 text-lg mb-8">
            <li class="flex items-start">
                <span class="text-blue-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-blue-700">Effortless Cleaning:</strong> One-button start with 360° rotation for powerful stain and dirt removal, reaching difficult corners with ease. Saves labor and protects joints.
                </div>
            </li>

            <li class="flex items-start">
                <span class="text-green-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-green-700">Extended Battery Life:</strong> Includes 3 replaceable cleaner heads and USB charging. Works up to 3 hours per charge for uninterrupted cleaning sessions.
                </div>
            </li>

            <li class="flex items-start">
                <span class="text-purple-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-purple-700">Durable & Portable Design:</strong> Crafted from high-quality ABS material. Features adhesive hooks for convenient wall storage and drainage.
                </div>
            </li>

            <li class="flex items-start">
                <span class="text-yellow-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-yellow-700">Secure Grip:</strong> Anti-slip handle ensures a comfortable and practical grip, even when wet.
                </div>
            </li>

            <li class="flex items-start">
                <span class="text-red-600 font-bold mr-2 text-xl">&bull;</span>
                <div>
                    <strong class="text-red-700">Versatile Application:</strong> Perfect for kitchens, living rooms, bathrooms, floors, tiles, furniture, stovetops, pots, cars, and more. An ideal gift for loved ones.
                </div>
            </li>
        </ul>

        <h2 class="text-xl sm:text-2xl font-bold text-gray-700 mb-4">Features</h2>
        <ul class="space-y-2 text-gray-700 text-base mb-8 list-disc list-inside">
            <li><strong class="text-gray-800">Ergonomic Design:</strong> Portable, light and comfortable to hold.</li>
            <li><strong class="text-gray-800">Cordless Convenience:</strong> Get rid of the annoyance caused by traditional power cord tangles, save time and clean easily and effectively.</li>
            <li><strong class="text-gray-800">Long-lasting Battery:</strong> The battery capacity is 1500 mAh, after charging for about 4-5 hours, it can work continuously for up to 200 minutes.</li>
            <li><strong class="text-gray-800">Dual Speed Adjustment:</strong> The speed of the electric scrubber has two adjustments, allowing you to easily and effectively clean stubborn and dirty stains.</li>
        </ul>

        <h2 class="text-xl sm:text-2xl font-bold text-gray-700 mb-4">Specification</h2>
        <div class="overflow-x-auto mb-8">
            <table class="min-w-full bg-white border border-gray-200 rounded-lg shadow-sm">
                <tbody class="divide-y divide-gray-200">
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Material</td>
                        <td class="px-4 py-2 text-gray-700">ABS</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Weight</td>
                        <td class="px-4 py-2 text-gray-700">497g</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Product size</td>
                        <td class="px-4 py-2 text-gray-700">19*7.5*5cm / 7.48*2.95*1.96inch</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Power supply mode</td>
                        <td class="px-4 py-2 text-gray-700">USB power supply</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Battery capacity</td>
                        <td class="px-4 py-2 text-gray-700">1500mAh</td>
                    </tr>
                    <tr class="hover:bg-gray-50">
                        <td class="px-4 py-2 font-semibold text-gray-800">Speed</td>
                        <td class="px-4 py-2 text-gray-700">350PRM</td>
                    </tr>
                </tbody>
            </table>
        </div>

        <h2 class="text-xl sm:text-2xl font-bold text-gray-700 mb-4">Product List</h2>
        <ul class="space-y-2 text-gray-700 text-base mb-8 list-disc list-inside">
            <li>1 x Electric brush host</li>
            <li>6 x brush heads</li>
            <li>1 x USB charging cable</li>
            <li>1 x Instruction manual</li>
        </ul>

        <h2 class="text-xl sm:text-2xl font-bold text-gray-700 mb-4">Note</h2>
        <div class="p-4 bg-red-50 rounded-lg shadow-sm text-gray-700 text-base">
            <p class="mb-2">1. The brush head can be in water, please do not put the whole device all the way into the water.</p>
            <p class="mb-2">2. Due to the different monitor and light effect,the actual color of the item might be slightly different from the color showed on the pictures.Thank you!</p>
            <p>3. Please allow 1-2cm measuring deviation due to manual measurement.</p>
        </div>
    </div>
</body>
</html>
''',
      ),
    ];
  }

  @override
  Future<List<String>> fetchBanners() async {
    await Future.delayed(
        const Duration(milliseconds: 10)); // simulate API delay
    return [
      PNGAssets.banner5,
      PNGAssets.banner5,
      PNGAssets.banner5,
      PNGAssets.banner5,
    ];
  }

  @override
  Future<List<CategoryModel>> fetchCategories() async {
    await Future.delayed(const Duration(seconds: 1)); // simulate delay
    return [
      CategoryModel(
        id: '1',
        title: 'Home & Kitchen',
        iconPath: PNGAssets.homeKitchen,
      ),
      CategoryModel(
        id: '2',
        title: 'Electronics',
        iconPath: PNGAssets.electronics,
      ),
      CategoryModel(
        id: '3',
        title: 'Fashion',
        iconPath: PNGAssets.fashion,
      ),
      CategoryModel(
        id: '4',
        title: 'Baby',
        iconPath: PNGAssets.baby,
      ),
      CategoryModel(
        id: '5',
        title: 'Toys',
        iconPath: PNGAssets.toys,
      ),
      CategoryModel(
        id: '6',
        title: 'Sports',
        iconPath: PNGAssets.sports,
      ),
      CategoryModel(
        id: '7',
        title: 'Stationary',
        iconPath: PNGAssets.stationary,
      ),
    ];
  }
}
