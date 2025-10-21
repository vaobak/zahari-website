'use client'

export default function Error({
  error,
  reset,
}: {
  error: Error & { digest?: string }
  reset: () => void
}) {
  return (
    <div className="min-h-screen flex items-center justify-center bg-gray-50">
      <div className="max-w-md w-full bg-white shadow-lg rounded-lg p-8 text-center">
        <h2 className="text-2xl font-bold text-red-600 mb-4">
          Terjadi Error!
        </h2>
        <p className="text-gray-600 mb-6">
          Halaman publikasi mengalami masalah. Silakan coba lagi.
        </p>
        <div className="space-y-4">
          <button
            onClick={reset}
            className="w-full bg-blue-600 text-white py-2 px-4 rounded-lg hover:bg-blue-700 transition-colors"
          >
            Coba Lagi
          </button>
          <a
            href="/"
            className="block w-full bg-gray-600 text-white py-2 px-4 rounded-lg hover:bg-gray-700 transition-colors"
          >
            Kembali ke Home
          </a>
        </div>
      </div>
    </div>
  )
}